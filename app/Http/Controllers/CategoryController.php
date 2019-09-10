<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use App\User;
use Illuminate\Support\Facades\Validator;
class CategoryController extends Controller
{
    public function categories()
    {
        return DB::table('categories')
        ->join('category_images', 'categories.id', '=', 'category_images.category_id')
        ->select('categories.*', 'category_images.image_url')
        ->paginate(2);
    }

    public function categoryItems($name)
    {

        $categoryID = DB::table('categories')
        ->where('categories.name',$name)
        ->select('categories.id')
        ->get();

        $cid = array();
        foreach ($categoryID as $id) {
            array_push($cid,$id->id);
        }

        return DB::table('items')
        ->join('categories', 'categories.id', '=', 'items.category_id')
        ->join('item_images', 'items.id', '=', 'item_images.item_id')
        ->where('items.category_id',$cid)
        ->select('items.*', 'item_images.image_url')
        ->paginate(6);

    }

    public function AddItem($tid)
    {
        $uid = Auth::user()->id;
        $query = DB::table('cart')
            ->where('cart.user_id', $uid)
            ->where('cart.item_id', $tid)
            ->where('cart.item_case', 0)
            ->select('cart.id')
            ->get();
        $check = array();
        foreach ($query as $q) {
            array_push($check, $q->id);
        }
        if($check==null){
            DB::table('cart')->insert([
                ['user_id' => $uid, 'item_id' => $tid, 'created_at' => NOW(), 'updated_at' => NOW()]
            ]);
            return "added to your cart";
        }else{
            return "its already added to your cart";
        }

    }

    public function AddFavorite($tid)
    {
        $uid = Auth::user()->id;
        $query = DB::table('favorites')
            ->where('favorites.user_id', $uid)
            ->where('favorites.item_id', $tid)
            ->select('favorites.id')
            ->get();
        $check = array();
        foreach ($query as $q) {
            array_push($check, $q->id);
        }
        if ($check == null) {
            DB::table('favorites')->insert([
                ['user_id' => $uid, 'item_id' => $tid, 'created_at' => NOW(), 'updated_at' => NOW()]
            ]);

            return "add to your favorites";
        }else{
            return "its already added to your favorites";
        }
    }

    public function ShowItem($id)
    {
        return DB::table('items')
        ->join('item_images', 'items.id', '=', 'item_images.item_id')
        ->where('items.id', $id)
        ->select('items.*', 'item_images.image_url')
        ->get();
    }

    public function Cart()
    {
        $uid = Auth::user()->id;

        return DB::table('cart')
        ->join('items', 'items.id', '=', 'cart.item_id')
        ->join('item_images', 'items.id', '=', 'item_images.item_id')
        ->where('cart.user_id', $uid)
        ->where('item_case', 0)
        ->select('items.*','item_images.image_url')
        ->get();

    }

    public function RemoveItem($tid)
    {
        $uid = Auth::user()->id;
        DB::table('cart')
        ->where('cart.user_id', $uid)
        ->where('cart.item_id', $tid)
        ->delete();
    }

    public function Favorites()
    {
        $uid = Auth::user()->id;
        return DB::table('favorites')
        ->join('items', 'items.id', '=', 'favorites.item_id')
        ->join('item_images', 'items.id', '=', 'item_images.item_id')
        ->where('favorites.user_id', $uid)
        ->select('items.*', 'item_images.image_url')
        ->get();
    }

    public function RemoveFavo($tid)
    {
        $uid = Auth::user()->id;
        DB::table('favorites')
            ->where('favorites.user_id', $uid)
            ->where('favorites.item_id', $tid)
            ->delete();
    }

    public function Items()
    {
        return DB::table('items')
        ->join('item_images', 'items.id', '=', 'item_images.item_id')
        ->select('items.*', 'item_images.image_url')
        ->paginate(9);
    }

    public function BillingAddress()
    {
        return DB::table('billing_address')
            ->join('users', 'users.id', '=', 'billing_address.user_id')
            ->select('users.name','users.email', 'billing_address.*')
            ->get();
    }
    public function CartItemsPurchases()
    {
        $uid = Auth::user()->id;
        $total_price = DB::table('cart')
            ->join('users', 'users.id', '=', 'cart.user_id')
            ->join('items', 'items.id', '=', 'cart.item_id')
            ->where('item_case', 0)
            ->where('users.id', $uid)
            ->SUM(DB::raw('items.price * items.offer / 100'));

        $Count = DB::table('cart')
            ->join('users', 'users.id', '=', 'cart.user_id')
            ->join('items', 'items.id', '=', 'cart.item_id')
            ->where('item_case', 0)
            ->where('users.id', $uid)
            ->COUNT('items.id');

        $items = DB::table('cart')
            ->join('users', 'users.id', '=', 'cart.user_id')
            ->join('items', 'items.id', '=', 'cart.item_id')
            ->where('item_case', 0)
            ->where('users.id',$uid)
            ->select(DB::raw('items.name,items.description,(items.price * items.offer / 100) as newprice'))
            ->get();

        return response()->json([
            "total_price" => $total_price,
            "items" => $items,
            "count" => $Count
        ]);

    }

    public function ConfirmItems()
    {
        $uid = Auth::user()->id;
        $items = DB::table('cart')
            ->join('users', 'users.id', '=', 'cart.user_id')
            ->join('items', 'items.id', '=', 'cart.item_id')
            ->where('item_case', 0)
            ->where('users.id', $uid)
            ->select('items.id')
            ->get();

        $arr = array();
        foreach ($items as $it) {
            array_push($arr, $it->id);
        }

        foreach ($arr as $itemID) {
            DB::table('cart')
                ->join('users', 'users.id', '=', 'cart.user_id')
                ->join('items', 'items.id', '=', 'cart.item_id')
                ->where('users.id', $uid)
                ->where('item_case', 0)
                ->update(['item_case' => 1]);
        }

    }

    public function DilveryItems()
    {
        $uid = Auth::user()->id;

        return DB::table('cart')
            ->join('users', 'users.id', '=', 'cart.user_id')
            ->join('items', 'items.id', '=', 'cart.item_id')
            ->join('item_images', 'items.id', '=', 'item_images.item_id')
            ->where('users.id', $uid)
            ->where('item_case', 1)
            ->select('items.*','item_images.image_url','cart.dilvered')
            ->get();
    }

    public function BillingDetails()
    {
        return DB::table('billing_address')
            ->join('users', 'users.id', '=', 'billing_address.user_id')
            ->where('users.id',Auth::user()->id)
            ->select('billing_address.*')
            ->get();
    }

    public function AddBilling(Request $request)
    {
        $uid = Auth::user()->id;
        $validator = Validator::make($request->all(), [
            'phone' => 'required|string|max:11|min:11',
            'address' => 'required|string',
            'country' => 'required|string',
            'state' => 'required|string',
            'zip' => 'required|string|max:5|min:5',
        ]);
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 401);
        }else{
            DB::table('billing_address')->insert([
                ['user_id' => $uid, 'phone' => $request->phone, 'address' => $request->address
                , 'country' => $request->country, 'state' => $request->state, 'zip' => $request->zip
                , 'created_at' => NOW(), 'updated_at' => NOW()]
            ]);
        }
    }
    public function UpdateBilling(Request $request)
    {
        $uid = Auth::user()->id;
        $validator = Validator::make($request->all(), [
            'phone' => 'required|string|max:11|min:11',
            'address' => 'required|string',
            'country' => 'required|string',
            'state' => 'required|string',
            'zip' => 'required|string|max:5|min:5',
        ]);
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 401);
        } else {
            DB::table('billing_address')->insert([
                [
                    'user_id' => $uid, 'phone' => $request->phone, 'address' => $request->address, 'country' => $request->country, 'state' => $request->state, 'zip' => $request->zip, 'created_at' => NOW(), 'updated_at' => NOW()
                ]
            ]);
        }
    }

}
