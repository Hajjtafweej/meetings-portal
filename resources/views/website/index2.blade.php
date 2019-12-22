
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Udema a modern educational site template">
    <meta name="author" content="Ansonika">
    <title>@yield('title')</title>

    <!-- Favicons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">

    <!-- BASE CSS -->
    <link href="{{ asset('fornt_end/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('fornt_end/css/style.css') }}" rel="stylesheet">
	<link href="{{ asset('fornt_end/css/vendors.css') }}" rel="stylesheet">
	<link href="{{ asset('fornt_end/css/icon_fonts/css/all_icons.min.css') }}" rel="stylesheet">
  <link href="{{ asset('fornt_end/layerslider/css/layerslider.css') }}" rel="stylesheet">

    <!-- YOUR CUSTOM CSS -->
    <link href="{{ asset('fornt_end/css/custom.css') }}" rel="stylesheet">


    <style>
        @import url('https://fonts.googleapis.com/css?family=Cairo|Lateef|Markazi+Text|Tajawal');
        /* latin-ext */
        @font-face {
          font-family: 'Raleway';
          font-style: normal;
          font-weight: 400;
          src: local('Raleway'), local('Raleway-Regular'), url(https://fonts.gstatic.com/s/raleway/v12/1Ptug8zYS_SKggPNyCMIT4ttDfCmxA.woff2) format('woff2');
          unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
        }

        /* latin */
        @font-face {
          font-family: 'Raleway';
          font-style: normal;
          font-weight: 400;
          src: local('Raleway'), local('Raleway-Regular'), url(https://fonts.gstatic.com/s/raleway/v12/1Ptug8zYS_SKggPNyC0IT4ttDfA.woff2) format('woff2');
          unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
        }

        *{
          /* font-family: 'Cairo', sans-serif; */
          font-family: 'Tajawal', sans-serif;
          /* font-family: 'Lateef', cursive; */
          /* font-family: 'Markazi Text', serif; */
        }

        .secondary_nav2{
          background: #ffc107;
          
          direction: rtl;
        }

        h2{
          color: #0c0c0c;
        }


        h3{
          color: #0c0c0c;
        }
        hr {
            border-color: #000000;
        }
        body{
          background-color: rgba(255, 0, 0, 0);
        }
        a.box_feat{
          background-color: #d4d4d824;
          -webkit-box-shadow: #e0e1e2;
          box-shadow: 0px 3px 0px 0px #bfc2c5;
        }
        .margin_120_95 {
          /* padding-top: 120px; */
         /* padding-bottom: 95px;*/
      }

      hr {
        border-color: #bfc2c5;
    }



        /* .sticky_horizontal{
          top: 0 !important;
        } */

      </style>


</head>

<body>



  <section>



    @foreach( $establishments as $establishment)

       @if($establishment->countries->count() > 0)
       <div class="container margin_120_95">
            <div class="main_title_2" id="sea">

                <h2>مؤسسة {{ $establishment->name_ar }}</h2>

            </div>

@foreach ($establishment->countries->chunk(4) as $country)
<div class="row" dir="rtl" id="{{ $establishment->id }}">

@foreach ($country as $item)
<div class="col-lg-3 col-md-4">
    <a class="box_feat" href="{{ url('brif_workshop',$item->id) }}" >
        <!-- <i class="pe-7s-diamond"></i> -->
<img src="flag/{{ $item->flag }}" alt="" style="border-radius: 10px" width="100%">
<hr>
        <h3>{{ $item->nationalite->name_ar }}</h3>
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



</body>
</html>
