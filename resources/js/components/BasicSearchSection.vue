<template>
    <div>
        <form action="/بحث" method="GET">
            <div class="container">
                <div id="custom-search-input">
                    <div class="row">
                        <autocomplete-country
                                placeholder="الدولة التي تريد الدراسة فيها"
                        >
                        </autocomplete-country>

                        <autocomplete-degree-type></autocomplete-degree-type>

                        <autocomplete-major
                                placeholder="التخصص"
                        ></autocomplete-major>
                    </div>
                </div>
                <br>
                <button type="submit" class="btn btn-primary btn-md btn-round">
                    <i class="fa fa-search"></i>
                    بحث
                </button>
                <!--<div>-->
                <!--</div>-->
            </div>
        </form>
    </div>
</template>

<script>

    export default {
        name:"basicSearchSection",
        data() {
            return {
                chosenIndex: '',
            }
        }
    }
</script>

<style scoped>
    .btn {
        cursor: pointer;
    }
    #custom-search-input{
        width:812px
    }
</style>


