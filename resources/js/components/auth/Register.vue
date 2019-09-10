<template>
    <div class="container mt-3">
        <div class="row  justify-content-md-center">
            <div class="col-md-8">
                <h1 class="text-center mb-4"><i class="fas fa-fingerprint fa-lg"></i> Create New
                    Account</h1>
                <div v-for="err in error" :key="err.id" class="alert alert-warning" role="alert">
                    {{err[0]}}
                </div>
                
                <form @submit.prevent="authenticate" class="needs-validation" novalidate>
                    <div v-if="authError" class="alert alert-warning" role="alert">
                        {{authError}}
                    </div>
                    <div class="form-group">
                        <input v-model="form.name" type="text" class="form-control" placeholder="Name" required>
                        <!-- <div class="invalid-feedback">Please Enter Your Name.</div> -->
                    </div>
                    <div class="form-group">
                        <input v-model="form.email" type="email" class="form-control" placeholder="Email" required>
                        <!-- <div class="invalid-feedback">Please Enter a Real Email.</div> -->
                    </div>
                    <div class="form-group">
                        <input v-model="form.password" type="password" class="form-control" placeholder="Password" required>
                        <!-- <div class="invalid-feedback">Please Enter Your Password.</div> -->
                    </div>
                    <div class="form-group">
                        <input v-model="form.c_password" type="password" class="form-control" placeholder="Repeat Password" required>
                        <!-- <div class="invalid-feedback">Please Enter Your Password.</div> -->
                    </div>
                    <button class="btn auth" type="submit">register</button><br>
                </form>
            </div>
        </div>

    </div>
</template>

<script>

import {register} from '../../helpers/auth';

export default {
    name : 'register',
    data() {
        return {
            form: {
                name : "",
                email : "",
                password : "",
                c_password : ""
            },
            error: []
        }
    },
    methods : {
        authenticate(){
            this.$store.dispatch('register');
            register(this.$data.form)
            .then((res)=>{
                this.$store.commit('loginSuccess',res);
                this.$router.push({path: '/billing-address'});
            })
            .catch((error)=>{
                this.error = error;
            });
        }
    },
    computed : {
        authError(){
            return this.$store.getters.registerError;
        }
    }
};
</script>

<style scoped>

</style>
