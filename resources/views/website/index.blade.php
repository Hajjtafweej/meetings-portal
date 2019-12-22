@extends('layouts.fornt_end.master')
@section('title','الرئيسية')


@section('content')



<section id="hero_in" class="general">
        <div class="wrapper" style="background-image: url({{ url('images/header.jpeg') }}); min-height:100%;
    background:linear-gradient(0deg,rgba(208,208,208,0.5),rgba(208,208,208,0.5)),url({{ url('images/header.jpeg') }});
    background-size:cover;">
          <div class="container">
            <h1 class="fadeInUp" style="color:#8e8d8c;">الدول المشاركة في تنظيم تفويج عام 1440هـ<span style="color:#8e8d8c;"></span></h1>
          </div>
        </div>
      </section>



<nav class="secondary_nav sticky_horizontal" id="navigator-y">
    <div class="container">
        <ul class="clearfix">
            <li><a href="#hero_in" class="active">الرئيسية</a></li>

            @foreach( $establishments as $establishment)
            @if($establishment->countries->count() > 0)
              <li> <a href="#{{ $establishment->id }}"> مؤسسة {{ $establishment->name_ar}} </a></li>
              @endif
            @endforeach
            {{-- <li><a href="#sea">جنوب شرق آسيا</a></li>
            <li><a href="#sa" class="">جنوب آسيا</a></li>
            <li><a href="#reviews" class="">مقاطع الفيديو</a></li> --}}
        </ul>
    </div>
  </nav>
      <!--/hero_in-->

  <section>



        @foreach( $establishments as $establishment)

           @if($establishment->countries->count() > 0)
           <div class="container margin_120_95">
                <div class="main_title_2" id="sea">
                    <span><em></em></span>
                    <h2>مؤسسة {{ $establishment->name_ar }}</h2>
                    
                </div>

@foreach ($establishment->countries->chunk(4) as $country)
<div class="row" dir="rtl" id="{{ $establishment->id }}">

   @foreach ($country as $item)
   <div class="col-lg-3 col-md-4">
        <a class="box_feat" href="{{ url('brif_workshop',$item->id) }}">
            <!-- <i class="pe-7s-diamond"></i> -->
<img src="flag/{{ $item->flag }}" alt="" style="border-radius: 10px" width="100%">
<hr>
            <h3>{{ $item->country }}</h3>
        </a>
    </div>
   @endforeach


</div>
@endforeach


                </div>

           @endif
@endforeach


























          <!--/row-->
      <!-- </div> -->
  </section>




































@endsection
