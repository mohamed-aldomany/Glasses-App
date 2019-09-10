<?php

Route::post('login', 'API\Auth\AuthController@login');
Route::post('register', 'API\Auth\AuthController@register');

Route::group(['middleware' => 'auth:api'], function () {
    Route::get('categories', 'CategoryController@categories');
    Route::get('categories/{name}/items', 'CategoryController@categoryItems');
    Route::post('additem/{tid}', 'CategoryController@AddItem');
    Route::post('addfavorite/{fid}', 'CategoryController@AddFavorite');
    Route::get('showitem/{id}','CategoryController@ShowItem');
    Route::post('cart', 'CategoryController@Cart');
    Route::post('removeitem/{tid}', 'CategoryController@RemoveItem');
    Route::post('favorites', 'CategoryController@Favorites');
    Route::post('removefavo/{tid}', 'CategoryController@RemoveFavo');
    Route::get('items', 'CategoryController@Items');
    Route::get('billingaddress', 'CategoryController@BillingAddress');
    Route::get('mycart/items', 'CategoryController@CartItemsPurchases');
    Route::post('confirmitems', 'CategoryController@ConfirmItems');
    Route::get('dilvery', 'CategoryController@DilveryItems');
    Route::get('billing-details', 'CategoryController@BillingDetails');
    Route::post('addbilling', 'CategoryController@AddBilling');
    Route::post('updatebilling', 'CategoryController@UpdateBilling');
    Route::post('logout', 'API\Auth\AuthController@logout');

});
