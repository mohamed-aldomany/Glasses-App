import Login from './components/auth/Login.vue';
import Register from './components/auth/Register.vue';
import Categories from './components/Pages/Categories.vue';
import CategoryItems from './components/Pages/CategoryItems.vue';
import ShowItem from './components/Pages/ShowItem.vue';
import Cart from './components/Pages/Cart.vue';
import Favorites from './components/Pages/Favorites.vue';
import Items from './components/Pages/Items.vue';
import Purchases from './components/Pages/Purchases.vue';
import Dilvery from './components/Pages/Dilvery.vue';
import BillingAdress from './components/Pages/BillingAdress.vue';

export const routes = [
    {
        path: '/login',
        component: Login,
        meta: { title: 'Skills - MyApp' }
    },
    {
        path: '/register',
        component: Register,
    },
    {
        path: '/categories',
        component: Categories,
        meta: { title: 'Categories - MyApp' }
    },
    {
        path: '/categories/:name/items',
        component: CategoryItems,
    },
    {
        path: '/item/:id',
        component: ShowItem,
    },
    {
        path: '/cart',
        component: Cart,
    },
    {
        path: '/favorites',
        component: Favorites,
    },
    {
        path: '/items',
        component: Items,
    },
    {
        path: '/purchases',
        component: Purchases,
    },
    {
        path: '/dilvery',
        component: Dilvery,
    },
    {
        path: '/billing-address',
        component: BillingAdress,
    },
    // {
    //     path: '/articles/',
    //     component: Articles,
    //     children: [{
    //             path: '/',
    //             component: List
    //         },
    //         {
    //             path: 'new',
    //             component: New
    //         },
    //         {
    //             path: ':id',
    //             component: View
    //         }
    //     ]
    // }
];
