<template>
    <div>
        <ais-index
                app-id="GFP9DGJG68"
                api-key="74990eb5c1e088538fd7f2e6cc208cf7"
                index-name="alarqam_unversities"
        >
            <!--/hero_in-->
            <div class="filters_listing sticky_horizontal" id="comeHere">
                <div class="container">
                    <ul class="clearfix">
                        <li>
                            <div>
                                <ais-results-per-page-selector
                                        :options="[12, 24, 48, 60, 72,84,96]"
                                ></ais-results-per-page-selector>
                            </div>
                        </li>
                        <li>
                            <ais-stats>
                                <template slot-scope="{ totalResults, processingTime, query, resultStart, resultEnd }">
                                    عرض {{ resultStart }} - {{ resultEnd }} من {{ totalResults }} النتائج.
                                </template>
                            </ais-stats>
                            <!--<div class="layout_view">-->
                            <!--<a href="{{ url()->current() }}?layout=grid"-->
                            <!--class="{{ request()->get('layout') == 'grid' || empty(request()->get('layout')) ? 'active': '' }}"-->
                            <!--&gt;-->
                            <!--<i class="icon-th"></i>-->
                            <!--</a>-->
                            <!--<a href="{{ url()->current() }}?layout=list"-->
                            <!--class="{{ request()->get('layout') == 'list' ? 'active': '' }}"-->
                            <!--&gt;-->
                            <!--<i class="icon-th-list"></i>-->
                            <!--</a>-->
                            <!--</div>-->
                        </li>
                    </ul>
                </div>
            </div>
            <!-- /container -->

            <div class="container margin_60_35">
                <div class="row">
                    <aside class="col-md-3" id="sidebar">
                        <div id="filters_col"><a data-toggle="collapse" href="#collapseFilters" aria-expanded="false"
                                                 aria-controls="collapseFilters" id="filters_col_bt">فلتر </a>
                            <div class="collapse show" id="collapseFilters">
                                <div class="filter_type">
                                    <ais-powered-by></ais-powered-by>
                                </div>
                                <hr>
                                <div class="filter_type">
                                    <ais-refinement-list
                                            attribute-name="by_major"
                                            :classNames="{
											'ais-refinement-list__count': 'badge badge-info',
											'ais-refinement-list__checkbox':'icheck'
											}"
                                    >
                                        <h3 slot="header">حسب التخصص</h3>
                                    </ais-refinement-list>
                                </div>
                                <div class="filter_type">
                                    <ais-tree-menu
                                            :attributes="[
													  'country.lvl0',
													  'country.lvl1',
													]"
                                            :classNames="{
											'ais-tree-menu':'',
											'ais-tree-menu__list':'list-group list-group-root well',
											'ais-tree-menu__item':'list-group-item',
											'ais-tree-menu__value':'',
											'ais-tree-menu__count':'badge badge-info',
											}"
                                    >
                                        <h3 slot="header">حسب الدول</h3>
                                    </ais-tree-menu>

                                    <ais-price-range
                                            attribute-name="price"
                                            :classNames="{
                                              'ais-price-range__input': 'form-control'
                                            }"
                                    >
                                        <h5 slot="header">حسب المبلغ</h5>
                                    </ais-price-range>
                                </div>
                            </div>
                            <!--/collapse -->
                        </div>
                        <!--/filters col-->
                    </aside>
                    <!-- /aside -->

                    <div class="col-md-9">
                        <div class="">

                            <div class="row">
                                <div class="col-md-6">
                                    <ais-search-box
                                            placeholder="ابحث هنا..."
                                            :autofocus="true"
                                            :classNames="{
                                    'ais-input': 'form-control'
                                    }"
                                    >
                                    </ais-search-box>
                                </div>
                                <div class="col-md-2">
                                    <ais-sort-by-selector
                                            :indices="[
										{name: 'unversities_price', label: 'حسب المبلغ'},
										{name: 'unversities_price_desc', label: 'أعلى سعر'},
										{name: 'unversities_price_asc', label: 'أقل سعر'},

									  ]"
                                            :classNames="{
									'ais-sort-by-selector': 'form-control'
								  }"
                                    />
                                </div>
                                <div class="col-md-2">
                                    <ais-sort-by-selector
                                            :indices="[
										{name: 'unversities_view', label: 'حسب المشاهدة'},
										{name: 'unversities_view_asc', label: 'أقل مشاهدة'},
										{name: 'unversities_view_desc', label: 'أعلى مشاهدة'}
									  ]"
                                            :classNames="{
									'ais-sort-by-selector': 'form-control'
								  }"
                                    />
                                </div>
                                <div class="col-md-2">
                                    <ais-sort-by-selector
                                            :indices="[
												{name: 'unversities_likes', label: 'الاكثر اعجاباً'},
												{name: 'unversities_likes_asc', label: 'الاقل اعجاباً'},
												{name: 'unversities_likes_desc', label: 'الاكثر اعجابا'}
											  ]"
                                            :classNames="{
									'ais-sort-by-selector': 'form-control'
								  }"
                                    />
                                </div>
                            </div>

                            <ais-results :classNames="{
							'ais-results':'row'
							}">
                                <template slot-scope="{ result }">
                                    <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
                                        <div class="box_grid wow">
                                            <figure class="block-reveal">
                                                <div class="block-horizzontal"></div>
                                                <a href="#0" class="wish_bt"></a>
                                                <a :href="result.path">
                                                    <img :src="result.image_covered" class="img-fluid" alt=""></a>
                                                <div class="price">{{ result.price }}</div>
                                                <div class="preview"><span>عرض التفاصيل</span></div>
                                            </figure>
                                            <div class="wrapper">
                                                <div style="color:#999999">
                                                    <span :class="'flag-icon flag-icon-'+ result.countryModel.code.toLowerCase().trim()"></span>
                                                    {{ result.countryModel.arabic_name }}
                                                </div>
                                                <h3>
                                                    <a :href="result.path">
                                                        <ais-highlight :result="result"
                                                                       attribute-name="name"></ais-highlight>
                                                    </a>
                                                </h3>
                                                <p class="sticked-p">
                                                    <ais-highlight :result="result"
                                                                   attribute-name="breif"></ais-highlight>
                                                </p>

                                            </div>
                                            <ul>
                                                <li>

                                                    <a :href="result.url_like"
                                                       :class="result.isLiked">

														<span>
															<i class="icon_like"></i>
															{{  result.count_likes }}
														</span>
                                                    </a>
                                                </li>
                                                <li> {{ result.count_views }} زائر <i class="icon-adult"></i></li>
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
                            <ais-pagination
                                    :padding="9"
                                    v-on:page-change="onPageChange"
                                    :classNames="{
									'ais-pagination': 'pagination pagination-sm',
									'ais-pagination__item':'page-item',
									'ais-pagination__link':'page-link',
									'ais-pagination__item--disabled':'disabled'
									}"
                            ></ais-pagination>
                        </div>
                        <!-- /row -->
                    </div>
                    <!-- /col -->
                </div>
                <!-- /row -->
            </div>
        </ais-index>
    </div>
</template>

<script>
    export default {
        // props: {
        //     chosenindex:'',
        // },
        methods: {
            onPageChange(page) {
                window.scrollTo(0, this.findPos(document.getElementById("comeHere")));
            },
            findPos(obj) {
                var curtop = 0;
                if (obj.offsetParent) {
                    do {
                        curtop += obj.offsetTop;
                    } while (obj = obj.offsetParent);
                    return [curtop];
                }
            }
        }

    }
</script>
