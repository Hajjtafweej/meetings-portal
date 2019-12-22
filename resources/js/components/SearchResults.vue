<template>

    		<div class="container margin_60_35">
			<div class="row">
				<aside class="col-lg-3" id="sidebar">
					<div id="filters_col"> <a data-toggle="collapse" href="#collapseFilters" aria-expanded="false" aria-controls="collapseFilters" id="filters_col_bt">فلتر </a>
						<div class="collapse show" id="collapseFilters">
							<div class="filter_type">
                                <h6>بحث </h6>
                                <ais-search-box 
                                placeholder="ابحث هنا..."
                                :autofocus="true"
                                :classNames="{
                                    'ais-input': 'form-control'
                                    }"
                                >
                                </ais-search-box>
							</div>
							<div class="filter_type">
                                
                                <ais-refinement-list 
                                attribute-name="_tags_name"
                                >
                                    <h3 slot="header">حسب التخصص</h3>
                                </ais-refinement-list>
							</div>
							<div class="filter_type">
								<h6>التقييمات</h6>
								<ul>
									<li>
										<label>
											<input type="checkbox" class="icheck">
											<span class="rating"><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i> <small>(145)</small></span>
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox" class="icheck">
											<span class="rating"><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i> <small>(25)</small></span>
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox" class="icheck">
											<span class="rating"><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i><i class="icon_star"></i> <small>(68)</small></span>
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox" class="icheck">
											<span class="rating"><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i><i class="icon_star"></i><i class="icon_star"></i> <small>(34)</small></span>
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox" class="icheck">
											<span class="rating"><i class="icon_star voted"></i><i class="icon_star"></i><i class="icon_star"></i><i class="icon_star"></i><i class="icon_star"></i> <small>(10)</small></span>
										</label>
									</li>
								</ul>
							</div>
						</div>
						<!--/collapse -->
					</div>
					<!--/filters col-->
				</aside>
				<!-- /aside -->

				<div class="col-lg-9">
					<div class="row">
                        <ais-results>
                            <template slot-scope="{ result }">
                            <div class="col-md-6">
							<div class="box_grid wow">
								<figure class="block-reveal">
									<div class="block-horizzontal"></div>
									<a href="#0" class="wish_bt"></a>
									<a :href="result.path">
                    <img :src="result.image_covered" class="img-fluid" alt=""></a>
									<!-- <div class="price">$54</div> -->
									<div class="preview"><span>عرض التفاصيل</span></div>
								</figure>
								<div class="wrapper">
									<small>
                                       في مدينة {{ result.city_name }}
                                    </small>
								  <h3>
                    <a :href="result.path">
                      <ais-highlight :result="result" attribute-name="name"></ais-highlight>
                    </a>
                  </h3>
									<p>
                                        <ais-highlight :result="result" attribute-name="breif"></ais-highlight>
                                    </p>
									<div class="rating"><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i><i class="icon_star"></i> <small>(145)</small></div>
								</div>
								<ul>
								  <li><em class="icon-adult"></em> ٤٠٠٠ زائر</li>
									<li><i class="icon_like"></i> 890</li>
									<li><a :href="result.path">اكتشف</a></li>
								</ul>
							</div>
						</div>
                             </template>
                    </ais-results>
                        <ais-no-results>
                        <template slot-scope="props">
                            <div class="text-center">
                            <div class="alert alert-info">
                                لايوجد نتائج 
                                <strong><i>{{ props.query }}</i></strong>.
                            </div>
                            </div>
                        </template>
                        </ais-no-results>
					</div>
					<!-- /row -->
				</div>
				<!-- /col -->
			</div>
			<!-- /row -->
		</div>

</template>

<script>
export default {
    // props: {
    //     chosenindex:'',
    // },

}
</script>
<style lang="scss" rel="stylesheet/scss">
#app {
  -webkit-font-smoothing: antialiased;
  padding-top: 20px;
}

.ais-input {
    display: block;
    width: 100%;
    height: 34px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
}
.ais-search-box__submit, .ais-clear {
    position: relative;
    display: inline-block;
    padding: 6px 12px;
    margin-bottom: 0;
    font-size: 14px;
    font-weight: 400;
    line-height: 1.42857143;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    -ms-touch-action: manipulation;
    touch-action: manipulation;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    background-image: none;
    border: 1px solid transparent;
    border-radius: 4px;
}

.ais-search-box__submit:hover, .ais-clear:hover {
    color: #333;
    background-color: #e6e6e6;
    border-color: #adadad;
}
.ais-highlight > em {
    background: #f0f3dc
}
.head-title {
  margin-top: 0;
}

.ais-powered-by {
  float: right;

  line-height: 26px;
  svg {
    vertical-align: bottom;
  }
}

.search-controls {
  padding-bottom: 20px;
}

.ais-stats {
  line-height: 36px;
}

.ais-results:after {
  content: ' ';
  display: block;
  clear: both;
}

.col-md-6 {
  width: 49%;
  margin-right: 1%;
  position: relative;
  display: inline;
  float: right;
  transition: all 0.5s;
}

.result__info {
  position: absolute;
  width: 100%;
  padding: 0px 20px 20px;
  bottom: 0;
  left: 0;
}

.result__image {
  margin-bottom: 100px;
}

.result__name {
  font-size: 14px;
  font-weight: bold;
}

.result__name mark,
.result__type mark {
  font-style: normal;
  background: rgba(143, 187, 237, 0.1);
  box-shadow: inset 0 -1px 0 0 rgba(69, 142, 225, 0.8);
}

.result__type mark {
  background: rgba(143, 187, 237, 0.1);
  border-radius: 0;
  box-shadow: inset 0 -1px 0 0 rgba(69, 142, 225, 0.8);
}

.result__price {
  font-size: 25px;
  font-weight: bold;
  position: absolute;
  right: 20px;
  bottom: 16px;
}

.result__type {
  color: #a2a2a2;
  font-size: 12px;
}

.result__rating {
  margin-top: 10px;
}

.result__star {
  width: 1em;
  height: 1em;
}

.result__star:before {
  content: '\2605';
  color: #fbae00;
}

.result__star--empty:before {
  content: '\2606';
  color: #fbae00;
}

/* Sort by selector */
.search-controls {
  .form-control {
    float: right;
    margin-left: 10px;
  }
}
.ais-sort-by-selector {
  float: right;
}

.ais-results-per-page-selector {
  float: right;
  margin-right: 10px;
}

/* Clear Search */
.ais-clear--disabled {
  display: none;
}

/* Price Range */
.ais-price-range__input--from,
.ais-price-range__input--to {
  width: 65px;
  display: inline-block;
}
</style>

