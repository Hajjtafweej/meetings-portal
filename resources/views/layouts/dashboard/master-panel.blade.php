<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="rtl">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
  <meta name="description" content="Robust admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template.">
  <meta name="keywords" content="admin template, robust admin template, dashboard template, flat admin template, responsive admin template, web app, crypto dashboard, bitcoin dashboard">
  <meta name="author" content="PIXINVENT">
  <title>CRM Dashboard - Robust - Responsive Bootstrap 4 Admin Dashboard Template for Web
    Application</title>
  <link rel="apple-touch-icon" href="{{asset('images/ico/apple-icon-120.png')}}">
  <link rel="shortcut icon" type="image/x-icon" href="{{asset('images/ico/favicon.ico')}}">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Muli:300,400,500,700"
  rel="stylesheet">
  <!-- BEGIN VENDOR CSS-->
  <link rel="stylesheet" type="text/css" href="{{asset('css-rtl/vendors.css')}}">
  <link rel="stylesheet" type="text/css" href="{{asset('vendors/css/file-uploaders/dropzone.min.css')}}">
  <link rel="stylesheet" type="text/css" href="{{asset('vendors/css/charts/jquery-jvectormap-2.0.3.css')}}">
  <link rel="stylesheet" type="text/css" href="{{asset('vendors/css/charts/morris.css')}}">
  <link rel="stylesheet" type="text/css" href="{{asset('vendors/css/extensions/unslider.css')}}">
  <link rel="stylesheet" type="text/css" href="{{asset('vendors/css/weather-icons/climacons.min.css')}}">
  <!-- END VENDOR CSS-->
  <!-- BEGIN ROBUST CSS-->
  <link rel="stylesheet" type="text/css" href="{{asset('css-rtl/app.css')}}">
  <link rel="stylesheet" type="text/css" href="{{asset('app-assets/css-rtl/custom-rtl.css')}}">
  <!-- END ROBUST CSS-->
  <!-- BEGIN Page Level CSS-->
  <link rel="stylesheet" type="text/css" href="{{asset('css-rtl/core/menu/menu-types/vertical-multi-level-menu.css')}}">
  <link rel="stylesheet" type="text/css" href="{{asset('css-rtl/pages/timeline.css')}}">
  <link rel="stylesheet" type="text/css" href="{{asset('css-rtl/plugins/file-uploaders/dropzone.css')}}">
  <link rel="stylesheet" type="text/css" href="{{asset('css-rtl/core/colors/palette-climacon.css')}}">
  <!-- END Page Level CSS-->
  <!-- BEGIN Custom CSS-->
  <link rel="stylesheet" type="text/css" href="{{asset('css/style-rtl.css')}}">
  <!-- END Custom CSS-->

  @yield('css')
</head>
<body class="vertical-layout vertical-mmenu 2-columns   menu-expanded fixed-navbar"
data-open="click" data-menu="vertical-mmenu" data-col="2-columns">
  <!-- fixed-top-->
  @include('layouts.dashboard._includes.navbar')
  <!-- ////////////////////////////////////////////////////////////////////////////-->
  <!-- main menu-->
  <div class="main-menu menu-fixed menu-dark menu-accordion menu-bordered menu-shadow">
  @include('layouts.dashboard._includes.sidebar')
  </div>
  <!-- / main menu-->
  @yield('content')
                 
  <!-- ////////////////////////////////////////////////////////////////////////////-->
   @include('layouts.dashboard._includes.footer')