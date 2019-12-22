<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::namespace('website')->group(function(){
    Route::get('/','WorKShopController@index');
    // Route::get('/brif_workshop/{id}','WorkShopController@show');
    Route::get('/content','WorKShopController@index2')->name('content');
});


Route::get('brif_workshop/{id}',function($id){

    $content = App\Content::find($id);
return view('website.brif_workshop',compact('content'));



});



Auth::routes();


Route::prefix('admin')->middleware('auth')->namespace('Admin')->group(function() {
    Route::get('/','DashbordController@index' );

    Route::get('/content/offce/create','ContentController@office_create' )->name('office-create');
    Route::get('/content/establishment/create','ContentController@establishment_create' )->name('establishment-create');
    Route::get('/content/ministry/create','ContentController@ministry_create' )->name('ministry-create');
    Route::get('/content/internal/create','ContentController@internal_create' )->name('internal-create');

    
    Route::get('/content/office','ContentController@office_index' )->name('office');
    Route::get('/content/establishment','ContentController@establishment_index' )->name('establishment');
    Route::get('/content/ministry','ContentController@ministry_index' )->name('ministry');
    Route::get('/content/internal','ContentController@internal_index' )->name('internal');


    Route::resource('/content', 'ContentController');
    Route::post('/content', 'ContentController@store')->name('content.store');

    Route::resource('/album', 'AlbumController');
    Route::post('/album', 'AlbumController@store')->name('album.store');



    Route::resource('/videos', 'VideosController');
    Route::post('/videos', 'VideosController@store')->name('videos.store');
});


 




// Route::get('/home', 'HomeController@index')->name('home');



// Route::get('/home', 'HomeController@index')->name('home');
