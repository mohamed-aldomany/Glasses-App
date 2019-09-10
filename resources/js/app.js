require('./bootstrap');
require('./my_js.js');
import Vue from 'vue';
import VueRouter from 'vue-router';
import Vuex from 'vuex';
import VueProgressBar from 'vue-progressbar'
import swal from 'sweetalert2/dist/sweetalert2.all.min.js'
import { routes } from './routes';
import StoreData from './store';
import { initialize } from './helpers/general';
import {
    Form,
    HasError,
    AlertError
} from 'vform'

// VUEROUTER
Vue.use(VueRouter);
const router = new VueRouter({
    routes,
    mode: 'history',
    scrollBehavior(to, from, savedPosition) {
        return { x: 0, y: 0 }
    }
});

//VUEX
Vue.use(Vuex);
const store = new Vuex.Store(StoreData);
initialize(store, router);

// VUE-PROGRESSBAR
const options = {
    color: '#3d0377',
    failedColor: 'red',
    thickness: '3px',
    transition: {
        speed: '0.9s',
        opacity: '0.1s',
        termination: 300
    },
    autoRevert: true,
    location: 'top',
    inverse: false,
}
Vue.use(VueProgressBar, options)

// VUE SWEETALERT
window.swal = swal
const toast = swal.mixin({
    toast: true,
    position: 'top-end',
    showConfirmButton: false,
    timer: 2000
});
window.toast = toast

Vue.component(HasError.name, HasError)
Vue.component(AlertError.name, AlertError)
window.Form = Form;

// VUE-PAGINATION
Vue.component('pagination', require('laravel-vue-pagination'));

Vue.component('main-app', require('./components/MainApp.vue').default);

const app = new Vue({
    el: '#app',
    router,
    store
});
