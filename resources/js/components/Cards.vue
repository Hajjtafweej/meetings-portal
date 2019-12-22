<template>
    <div>
    <div v-for="sets in chunkPoster" :key="sets.id">
        <div class="row">
        <div v-for="poster in sets" :key="poster.id" class="col-xl-4 col-lg-6 col-md-6">
            <div class="box_grid wow">
                <figure class="block-reveal">
                    <div class="block-horizzontal"></div>
                    <a href="#0" class="wish_bt"></a>
                    <a href="course-detail.html"><img src="img/01.jpg" class="img-fluid" alt=""></a>
                    
                    <div class="preview"><span>عرض المنح</span></div>
                </figure>
                <div class="wrapper"><small> <i class="fa fa-map-o" aria-hidden="true"></i>  </small>
                    <h3></h3>
                    <p> </p>
                    <div class="rating"><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i>
                        <i class="icon_star"></i> <small>(145)</small></div>
                </div>
                <ul>
                    <li><em class="icon-adult"></em>   زائر</li>
                    <li><i class="icon_like"></i> 890</li>
                <li><a href="">اكتشف</a></li>
                </ul>
            </div>
        </div>
        <!-- /box_grid -->
        </div>
    </div>

    </div>
</template>

<script>
export default {
  data() {
    return {
      posters: []
    };
  },
  created() {
    axios
      .get("/api/v1/web/scholarship")
      .then(response => {
        this.posters = response.data.data;
      })
      .catch(response => {
        console.log(response);
      });
  },
  filters: {
    strLimit: function(text, length, suffix) {
      return text.substring(0, length) + suffix;
    }
  },
  computed: {
    chunkPoster() {
      return _.chunk(this.posters, 3);
    }
  }
};
</script>

<style scoped>

</style>