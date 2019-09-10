<template>
    <div class="container mt-5">
        <div v-for="ite in item" :key="ite.id"  class="row">
            <div class="col-md-6">
                <div class="card showitem">
                    <div class="card-body">
                        <h5 class="card-title"><strong>Name :</strong> {{ite.name}}</h5>
                        <p class="card-text"><strong>Description :</strong> {{ite.description}}</p>
                        <p class="card-text"><strong>Price :</strong> {{ite.price}}$</p>
                        <p class="card-text" v-show="ite.color"><strong>Color :</strong> {{ite.color}}</p>
                        <p class="card-text"><strong>Offer :</strong> {{ite.offer}}%</p>
                        <p class="AddCartButton" @click="AddCart(ite.id)">Add To Cart<i class="fa fa-cart-plus fa-lg ml-2"></i></p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card bg-dark text-white">
                    <img :src="'/img/'+ite.image_url+'.jpg'" class="card-img Categories" alt="...">
                </div><br>
                <i @click="AddFavorite(ite.id)" class="fa fa-heart fa-lg ml-2" style="float:right"></i>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name : "ShowItem",
    data(){
        return {
            itemID : this.$route.params.id,
            item : {},
        }
    },
    methods : {
        GetItem(){
            axios.get('/api/showitem/'+this.itemID)
            .then((data)=>{
                this.item = data.data;
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
        }
    },
    created(){
        this.$Progress.start();
        this.GetItem();
    }
}
</script>

<style scoped>
    .card.showitem{
        border: none;
        margin-top: 55px;
    }
    .card.bg-dark.text-white{
        margin-top: 45px;
    }
    .fa.fa-cart-plus{
        color: darkcyan;
        font-size: 30px;
    }
    .AddCartButton {
        cursor: pointer;
        background-color: cyan;
        padding: 8px;
        width: 150px;
        border-radius: 8px;
    }
    .AddCartButton:hover {
        background-color:wheat;
    }
    .fa.fa-heart{
        position: relative;
        bottom: 60px;
        right: 11px;
        color: yellow;
        font-size: 30px;
        cursor: pointer;
    }
    .fa.fa-heart:hover{
        color: red;
        font-size: 60px;
        bottom: 90px;
    }
</style>
