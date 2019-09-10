<template>
<div class="container mt-2">
    <div class="row  justify-content-md-center">
        <div class="col-md-8">
            <h1 class="text-center mb-5"><i class="fas fa-fingerprint fa-lg"></i> Billing Address Information</h1>
            <form @submit.prevent="InsertInfo()">
                <div class="form-group">
                <input placeholder="phone" v-model="form.phone" type="text" name="phone"
                    class="form-control" :class="{ 'is-invalid': form.errors.has('phone') }">
                <has-error :form="form" field="phone"></has-error>
                </div>
                <div class="form-group">
                <input placeholder="Address" v-model="form.address" type="text" name="address"
                    class="form-control" :class="{ 'is-invalid': form.errors.has('address') }">
                <has-error :form="form" field="address"></has-error>
                </div>
                <div class="form-group">
                <input placeholder="Country" v-model="form.country" type="text" name="country"
                    class="form-control" :class="{ 'is-invalid': form.errors.has('country') }">
                <has-error :form="form" field="country"></has-error>
                </div>
                <div class="form-group">
                <input placeholder="State" v-model="form.state" type="text" name="state"
                    class="form-control" :class="{ 'is-invalid': form.errors.has('state') }">
                <has-error :form="form" field="state"></has-error>
                </div>
                <div class="form-group">
                <input placeholder="Zip-Code" v-model="form.zip" type="text" name="zip"
                    class="form-control" :class="{ 'is-invalid': form.errors.has('zip') }">
                <has-error :form="form" field="zip"></has-error>
                </div>
                <button :disabled="form.busy" type="submit" class="btn btn-primary">Save</button>
            </form>
        </div>
    </div>
</div>
</template>
<script>
export default {
    data () {
        return {
            form: new Form({
                phone : "",
                address : "",
                country : "",
                state : "",
                zip : ""
            }),
            Details : {}
        }
    },
    methods : {
        InsertInfo(){
            this.$Progress.start();
            this.form.post('/api/addbilling')
            .then(() => {
                this.$Progress.finish();
                toast.fire({
                    type: 'success',
                    title: "now you can buy anything"
                });
            })
            this.form.reset();
        },
        UpdateInfo(){
            window.alert("update form");
        },
        BillingDetails(){
            axios.get('/api/billing-details')
            .then((data)=>{
                this.Details = data.data;
                this.$Progress.finish();
            })
        }
    },
    created() {
        this.$Progress.start();
        this.BillingDetails();
    }
}
</script>
