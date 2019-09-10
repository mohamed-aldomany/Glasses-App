<template>
    <div class="container mt-3">
        <h3 class="text-center">Choose Your Favorite Category</h3>
        <div class="row Categories">
            <div class="col-md-6" v-for="category in Categories.data" :key="category.id">
                <div class="card bg-dark text-white">
                    <router-link :to="'/categories/'+category.name+'/items'">
                        <img :src="'/img/'+category.image_url+'.jpg'" class="card-img Categories" alt="...">
                        <div class="card-img-overlay">
                            <h5 class="card-title categories" style="color:darkblue">{{category.name}}</h5>
                        </div>
                    </router-link>
                </div><br><br>
            </div>
        </div>
        <div>
            <pagination class="offset-md-5" :data="Categories" @pagination-change-page="getResults"></pagination>
        </div>
    </div>
</template>

<script>
export default {
    name : "Categories",
    data(){
        return{
            Categories: {}
        }
    },
    methods : {
        getResults(page = 1) {
            this.$Progress.start();
            axios.get('/api/categories?page=' + page)
            .then(response => {
                this.Categories = response.data;
                this.$Progress.finish();
            });
		},
        GetCategories(){
            axios.get('/api/categories')
            .then(({ data })=>{
                this.Categories = data
                this.$Progress.finish();
            })
        }
    },
    created(){
        this.$Progress.start();
        this.GetCategories();
    }
}
</script>

<style scoped>
.row.Categories{
    margin-top: 70px;
}
</style>
