<template>
    <div class="container mt-5">
        <div class="row  justify-content-md-center">
            <div class="col-md-8">
                <h1 class="text-center mb-5"><i class="fas fa-fingerprint fa-lg"></i> Login</h1>
                <form @submit.prevent="authenticate" class="needs-validation" novalidate>
                    <div v-for="err in error" :key="err.id" class="alert alert-warning" role="alert">
                        {{err[0]}}
                    </div>
                    <div class="form-group">
                        <input v-model="form.email" type="email" class="form-control" placeholder="Email" required>
                    </div>
                    <div class="form-group">
                        <input v-model="form.password" type="password" class="form-control" placeholder="Password" required>
                    </div>
                    <button class="btn auth" type="submit">Login</button><br>
                </form>
            </div>
        </div>
    </div>
</template>

<script>

import {login} from '../../helpers/auth';

export default {
    name : 'login',
    data() {
        return {
            form: {
                email : "",
                password : ""
            },
            error: []
        }
    },
    methods : {
        authenticate(){
            this.$store.dispatch('login');
            login(this.$data.form)
            .then((res)=>{
                this.$store.commit('loginSuccess',res);
                this.$router.push({path: '/categories'});
            })
            .catch((error)=>{
                this.error = error;
            });
        }
    }
};
</script>

<style scoped>

</style>
