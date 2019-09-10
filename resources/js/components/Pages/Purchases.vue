<template>
  <div class="container">
    <div class="py-5 text-center">
        <h2>Checkout form</h2>
    </div>

    <div class="row">
      <div class="col-md-4 order-md-2 mb-4">
        <h4 class="d-flex justify-content-between align-items-center mb-3">
          <span class="text-muted">Your cart</span>
          <span class="badge badge-secondary badge-pill">{{MyCart.count}} items</span>
        </h4>
        <ul class="list-group mb-3">
          <li v-for="cart in MyCart.items" :key="cart.id" class="list-group-item d-flex justify-content-between lh-condensed">
            <div>
              <h6 class="my-0">{{cart.name}}</h6>
              <small class="text-muted">{{cart.description.substring(0,40)+"...."}}</small>
            </div>
            <span class="text-muted">{{cart.newprice}}$</span>
          </li>
          <li class="list-group-item d-flex justify-content-between bg-light">
            <div class="text-success">
              <span>Total (USD)</span>
            </div>
            <span class="text-success">{{MyCart.total_price}}$</span>
          </li>
        </ul>
        <button @click="ConfirmItems()" class="btn btn-dark" :disabled="MyCart.count==0">Confirm Your Cart</button>
        <!-- <button v-else @click="ConfirmItems()" class="btn btn-dark">Confirm Your Cart</button> -->
      </div>
      <div class="col-md-8 order-md-1 mb-5">
        <h4 class="mb-3">Billing address</h4>
        <form class="needs-validation" v-for="bA in BillingAddress" :key="bA.id">
            <div class="row">
                <div class="col-md-6">
                    <label for="country">Name</label>
                    <input type="text" class="form-control" :value="bA.name" required  disabled />
                </div>
                <div class="col-md-6">
                    <label for="country">Email</label>
                    <input type="email" class="form-control" id="email" :value="bA.email"  disabled />
                </div>
            </div>
            <div class="mb-3">
                <label for="country">Address</label>
                <input type="text" class="form-control" :value="bA.address" required disabled />
            </div>
            <div class="mb-3">
                <label for="country">Phone</label>
                <input type="text" class="form-control" :value="bA.phone" required disabled />
            </div>
            <div class="row">
                <div class="col-md-5 mb-3">
                    <label for="country">Country</label>
                    <input type="text" class="form-control" :value="bA.country" required disabled />
                </div>
                <div class="col-md-4 mb-3">
                    <label for="state">State</label>
                    <input type="text" class="form-control" :value="bA.state" required disabled />
                </div>
                <div class="col-md-3 mb-3">
                    <label for="zip">Zip</label>
                    <input type="text" class="form-control" id="zip" :value="bA.zip" required  disabled />
                </div>
            </div>
        </form>
      </div>
    </div>
  </div>
</template>

<script>
export default {
    data(){
        return {
            BillingAddress : {},
            MyCart: [],
            price : []
        }
    },
    methods : {
        GetData(){
            axios.get('/api/billingaddress/')
            .then((data)=>{
                this.BillingAddress = data.data;
                this.$Progress.finish();
            })
        },
        GetCart(){
            axios.get('/api/mycart/items')
            .then((data)=>{
                this.MyCart = data.data;
                this.$Progress.finish();
            })
        },
        ConfirmItems(){
            axios.post('/api/confirmitems')
            .then((data)=>{
                this.$Progress.start();
                toast.fire({
                    type: 'success',
                    title: "items will delivered in fastest time"
                });
                this.GetCart();
                this.$Progress.finish();
            })
        }
    },
    created(){
        this.$Progress.start();
        this.GetData();
        this.GetCart();
    }
};
</script>

<style scoped>
.needs-validation input{
    border-radius: 10px !important;
    background-color: aqua;
}
</style>
