@extends('layouts.dashboard.master-panel')
@section('css')
<link rel="stylesheet" type="text/css" href="{{asset('vendors/css/ui/prism.min.css')}}">

@endsection
@section('content')




<div class="app-content content">
        <div class="content-wrapper">
          <div class="content-header row">
            <div class="content-header-left col-md-6 col-12">
              <h3 class="content-header-title">معلومات الورشة </h3>
              <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">

                </div>
              </div>
            </div>
            <div class="content-header-right col-md-6 col-12">

            </div>
            <div class="content-header-lead col-12 mt-2">

            </div>
          </div>
          <div class="content-body">
            <!-- Description -->
            <section id="description" class="card">
              <div class="card-header">
                <h4 class="card-title">عن الورشة </h4>


              </div>
              <div class="card-content">
                <div class="card-body">
                  <div class="card-text">
                     <h3>اسم الدولة :</h3><h4>{{ $content1->country}}</h4>








                       <div class="card" style="float:left; margin-top:-140px;">
                           <div class="card-body">
                  <figure class="" itemprop="associatedMedia" itemscope itemtype="http://schema.org/ImageObject">


                      <img class="img-thumbnail img-fluid" width="200px;"  src="/flag/{{ $content1->flag}}"
                      itemprop="thumbnail" alt="Image description" />

                  </figure>
                           </div>
                       </div>



                  <br>
                  <h3>عن الدولة :</h3>




                  <h4>{!! $content1->description!!}</h4>








                  <hr>

                  <h3>عن الورشة :</h3>
                    <p>{!! $content1->brife!!}</p>


                  </div>
                </div>
              </div>
            </section>
            <!--/ Description -->
            <!-- Image grid -->

            <section id="image-gallery" class="card">
              <div class="card-header">
                <h4 class="card-title">صور الورشة</h4>
                <a class="heading-elements-toggle"><i class="fa fa-ellipsis-v font-medium-3"></i></a>

              </div>
              <div class="card-content">
                <div class="card-body">
                  <div class="card-text">
                      <form action="{{ route('album.store') }}" method="POST">
                          @csrf
                          <input type="hidden" value="{{ $content1->id }}" name="content_id">
                            <div class="row">
                                <div class="col-md-4">
                                        <div>
                                                <input type="text" name="link" class="form-control" placeholder="رابط الصورة " required>

                                            </div>

                                </div>
                                <div class="col-md-2">

                                            <div class="text-right">
                                                <button type="submit" class="btn btn-primary btn-min-width " ><i class="fa fa-link fa-1x">  إضافة رابط الصورة </i></button>
                                            </div>
                                </div>
                            </div>
                        </form>

 <hr>

                  </div>
                </div>

                <div class="card-body  my-gallery" itemscope itemtype="http://schema.org/ImageGallery">

                  <div class="row">



                        @if($content1->album)

                    <figure class="col-lg-7 col-md-6 col-12" itemprop="associatedMedia" itemscope itemtype="http://schema.org/ImageObject">

                        <div class="card" style="border: solid 1px black;">

                                <div class="card-heading"></div>

                                <div class="card-body">

                                    {!! $content1->album->link !!}


                                </div>

                                <div class="card-footer">

                                   <form action="{{ route('album.destroy',$content1->album->id )}}" method="POST" >
                                       @csrf
                                       @method('delete')
                                        <button onclick="return confirm('متأكد تبغى تحذف?')" type="submit" value="delete" class="btn btn-danger btn-min-width text-center" style="margin-right:30px; "><i class="fa fa-trash fa-1x"></i></button>
                                   </form>

                                </div>

                            </div>


                        </figure>
                        @endif


                  </div>
                  <div class="row">





                  </div>
                  </div>
                </div>
                <!--/ Image grid -->
                <!-- Root element of PhotoSwipe. Must have class pswp. -->
                <div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">
                  <!-- Background of PhotoSwipe.
                 It's a separate element as animating opacity is faster than rgba(). -->
                  <div class="pswp__bg"></div>
                  <!-- Slides wrapper with overflow:hidden. -->
                  <div class="pswp__scroll-wrap">
                    <!-- Container that holds slides.
                    PhotoSwipe keeps only 3 of them in the DOM to save memory.
                    Don't modify these 3 pswp__item elements, data is added later on. -->
                    <div class="pswp__container">
                      <div class="pswp__item"></div>
                      <div class="pswp__item"></div>
                      <div class="pswp__item"></div>
                    </div>
                    <!-- Default (PhotoSwipeUI_Default) interface on top of sliding area. Can be changed. -->

                  </div>
                </div>
              </div>
              <!--/ PhotoSwipe -->
            </section>
            <!--/ Image grid -->
            <!-- Video grid -->
            <section id="video-gallery" class="card">
              <div class="card-header">
                <h4 class="card-title">فديوهات الورشة</h4>
              </div>
              <div class="card-content">
                <div class="card-body">
                        <div class="card-text">
                                <form action="{{ route('videos.store') }}" method="POST">
                                    @csrf
                                    <input type="hidden" value="{{ $content1->id }}" name="content_id">
                                      <div class="row">
                                          <div class="col-md-4">
                                                  <div>
                                                          <input type="text" name="link" class="form-control" placeholder="رابط الفيديو" required>
                                                      </div>

                                          </div>
                                          <div class="col-md-2">

                                                      <div class="text-right">
                                                        <button   type="submit" class="btn btn-primary btn-min-width " ><i class="fa fa-link fa-1x">  إضافة رابط الصورة </i></button>
                                                    </div>
                                          </div>
                                      </div>
                                  </form>

                </div>

<hr>


                <div class="card-body" >
                  <h5 class="card-header"></h5>
                  <div class="row">


                        @foreach($content1->videos as $vid)




                    <div class="col-lg-3 col-md-6 col-12" >
                        <div style="border: solid 1px black;">
                      <div class="embed-responsive embed-responsive-item embed-responsive-16by9">


                            <div style=" background-color: red;">
                                  <iframe width="100%"
                                  src="https://www.youtube.com/embed/{{ $vid->link }}"
                                  frameborder="0"
                                   allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                                    allowfullscreen></iframe>
                              </div>

                      </div>
                      <div class="card-footer">
                            <form action="{{ route('videos.destroy',$vid->id) }}" method="POST" >
                                @csrf
                                @method('delete')
                                <button onclick="return confirm('متأكد تبغى تحذف?')" type="submit" value="delete" class="btn btn-danger text-center block" ><i class="fa fa-trash fa-1x"></i></button>

                            </form>
                    </div>
                    </div>
                </div>

                    @endforeach




                  </div>

                </div>

              </div>
            </section>
















          </div>
        </div>
      </div>



















@endsection
@section('js')





@endsection
