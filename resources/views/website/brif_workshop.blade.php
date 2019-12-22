@extends('layouts.fornt_end.master')
@section('title')
{{ $content->country }}
@endsection
@section('content')



<main>

    {{--  <section id="hero_in" class="general">
            <div class="wrapper" style="background-image: url({{ url('images/header.jpeg') }}); min-height:100%;
        background:linear-gradient(0deg,rgba(208,208,208,0.5),rgba(208,208,208,0.5)),url({{ url('images/header.jpeg') }});
        background-size:cover;">
              <div class="container">
                <h1 class="fadeInUp"><span></span>{{ $content->country }}</h1>
              </div>
            </div>
          </section>  --}}


    <!--/hero_in-->


    <div class="bg_color_1">

        <nav class="secondary_nav sticky_horizontal" style=" background: #d4d4d8;">

            <div class="container">

                <ul class="clearfix">
                    <li><a  href="{{ url('/content') }}" class="">الرئيسية</a></li>
        <li><a href="#description">المحضر</a></li>
                    <li><a href="#lessons">ألبوم الصور</a></li>
                    <li><a href="#reviews">مقاطع الفيديو</a></li>
                </ul>
            </div>
        </nav>
        <div class="container margin_60_35">
            <div class="row">
                <div class="col-lg-8">

                    <section id="description">
                        <h2>عن الدولة</h2>
                        {!! $content->description  !!}

                    </section>



                    <section id="description">
                        <h2>معلومات الحضور</h2>
                        {!! $content->attendinfo  !!}


                    </section>


                    <section id="description">
                            <h2>المحضر</h2>
                         {!! $content->brife  !!}

                    </section>


                    <!-- /section -->

                    <section id="lessons">
                        <div class="intro_title">
                            <h2>ألبوم الصور</h2>

                        </div>

          <section>
              @if($content->album )
            <div class="" style="height: 400px; background-color: red;">
                        {!! $content->album->link !!}

            </div>
            @endif
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>


          </section>
                        <!-- /accordion -->
                    </section>
                    <!-- /section -->

                    <section id="reviews">

                        <h2>مقاطع الفيديو</h2>
                                  @foreach ($content->videos as $vid)
                                  <div style="height: 400px; background-color: red;">
                                        <iframe width="100%"
                                        src="https://www.youtube.com/embed/{{ $vid->link }}"
                                        frameborder="0"
                                         allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                                          allowfullscreen></iframe>
                                    </div>
                                    <h1 class="fadeInUp"><span></span></h1>
                                  @endforeach



                        <!-- /review-container -->
                    </section>
                    <!-- /section -->
                </div>
                <!-- /col -->

                <aside class="col-lg-4" id="sidebar">
                    <!-- <div class="box_detail"> -->

                        <!-- <figure style=""> -->
                            <img src="/flag/{{ $content->flag }}" alt="" style="border-radius: 5px; box-shadow: 3px 3px 30px gray;" width="100%">
                        <!-- </figure> -->

                    <!-- </div> -->
                </aside>

            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
    <!-- /bg_color_1 -->
</main>
<!--/main-->



@endsection
