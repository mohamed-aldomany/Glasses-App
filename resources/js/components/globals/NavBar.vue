<template>
    <nav class="navbar navbar-expand-lg navbar-light navbar-fixed-top">
        <router-link class="navbar-brand" to="/categories">Glasses</router-link>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div v-if="currentUser" class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <router-link class="nav-link" to="/categories">Categories</router-link>
                </li>
                <li class="nav-item">
                    <router-link class="nav-link" to="/items">Items</router-link>
                </li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <router-link to="/cart"><i class="fa fa-cart-plus fa-lg"></i></router-link>
                </li>
                <li class="nav-item">
                    <router-link to="/favorites"><i class="fa fa-heart fa-lg"></i></router-link>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        {{currentUser.name}}
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <router-link class="dropdown-item" to="/purchases">Purchases</router-link>
                        <router-link class="dropdown-item" to="/dilvery">Dilvery</router-link>
                        <router-link class="dropdown-item" to="/billing-address">Billing</router-link>
                        <div class="dropdown-divider"></div>
                        <button class="dropdown-item" @click="logout()">Logout</button>
                    </div>
                </li>
            </ul>
        </div>
        <div v-else class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <router-link class="nav-link" to="/login">Login</router-link>
                </li>
                <li class="nav-item">
                    <router-link class="nav-link" to="/register">Register</router-link>
                </li>
            </ul>
        </div>
    </nav>
</template>
<script>
export default {
    name : 'NavBar',
    methods : {
        logout(){
            this.$store.commit('logout');
            this.$router.push('/login');
        }
    },
    computed : {
        currentUser(){
            return this.$store.getters.currentUser;
        }
    }
}
</script>

<style scoped>
    .fa.fa-cart-plus,.fa-heart{
        margin-top: 13px;
        font-size: 25px;
        color: red;
        margin-right: 7px;
    }
</style>
