<template>
    <div class="container mt-3">
        <div class="row">
            <div class="col-md-4" v-for="item in CategoryItems.data" :key="item.id" >
                <div class="card">
                    <img :src="'/img/'+item.image_url+'.jpg'" class="card-img-top" alt="...">
                    <div class="card-body">
                        <p class="card-text">{{item.name}}</p><hr>
                        <div class="row">
                            <div class="col-md-6">
                                {{item.price}}$
                            </div>
                            <div class="col-md-6">
                                <i @click="ShowItem(item.id)" class="fa fa-eye fa-lg ml-2" style="float:right"></i>
                                <i @click="AddFavorite(item.id)" class="fa fa-heart fa-lg ml-2" style="float:right"></i>
                                <i @click="AddCart(item.id)" class="fa fa-cart-plus fa-lg ml-2" style="float:right"></i>
                            </div>
                        </div>
                    </div>
                </div><br>
            </div>
        </div>
        <div>
            <pagination class="offset-md-5" :data="CategoryItems" @pagination-change-page="getResults"></pagination>
        </div>
    </div>
</template>

<script>
export default {
    name : "CategoryItems",
    data(){
        return {
            CategoryName : this.$route.params.name,
            CategoryItems : {},
        }
    },
    methods : {
        getResults(page = 1) {
            this.$Progress.start();
            axios.get('/api/categories/'+this.CategoryName+'/items?page=' + page)
            .then(response => {
                this.CategoryItems = response.data;
                this.$Progress.finish();
            });
		},
        GetItems(){
            axios.get('/api/categories/'+this.CategoryName+'/items')
            .then(({ data })=>{
                this.CategoryItems = data;
                this.$Progress.finish();
            })
        },
        AddCart(id){
            axios.post('/api/additem/'+id)
            .then((data)=>{
                this.$Progress.start();
                toast.fire({
                    type: 'success',
                    title: data.data
                });
                this.$Progress.finish();
            })
        },
        AddFavorite(id){
            axios.post('/api/addfavorite/'+id)
            .then((data)=>{
                this.$Progress.start();
                toast.fire({
                    type: 'success',
                    title: data.data
                });
                this.$Progress.finish();
            })
        },
        ShowItem(id){
            this.$router.push('/item/'+id)
        }
    },
    created(){
        this.$Progress.start();
        this.GetItems();
    }
}
</script>

<style scoped>

.fa.fa-cart-plus{
    color: darkcyan;
    font-size: 30px;
    cursor: pointer;
}
.fa.fa-heart{
    color: red;
    font-size: 30px;
    cursor: pointer;
}
.fa.fa-eye{
    color: gray;
    font-size: 30px;
    cursor: pointer;
}
.fa:hover {
    padding: 1px;
}
</style>
