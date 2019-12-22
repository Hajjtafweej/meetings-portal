<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Videos;
use App\Album;
use App\Content;
use App\Establishment;
use App\nationalities;
use DB;

class ContentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */



    public function __construct()
    {
        $this->middleware('auth');
    }








    public function index()
    {

        $contents = Content::all();
        return view('admin.content.index')->with('contents',$contents);
    }

    public function office_index()
    {

        $contents = Content::where('meeting_type',"مكتب")->get();
        return view('admin.content.index')->with('contents',$contents);
    }


    public function establishment_index()
    {

        $contents = Content::where('meeting_type','مؤسسة')->get();
        return view('admin.content.index')->with('contents',$contents);
    }

    public function ministry_index()
    {

        $contents = Content::where('meeting_type','الوزارة')->get();
        return view('admin.content.index')->with('contents',$contents);
    }

    public function internal_index()
    {

        $contents = Content::where('meeting_type','داخلي')->get();
        return view('admin.content.index')->with('contents',$contents);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

        // $countries =Countries::pluck('name','id');
        $establishments = Establishment::all();
        $nationlities = DB::table('nationalities')->get();
       return view('admin.content.create',compact('nationlities','establishments'));
    }


    public function office_create()
    {

        // $countries =Countries::pluck('name','id');
        $establishments = Establishment::all();
        $nationlities = DB::table('nationalities')->get();
       return view('admin.content.office',compact('nationlities','establishments'));
    }


    public function establishment_create()
    {

        // $countries =Countries::pluck('name','id');
        $establishments = Establishment::all();
        $nationlities = DB::table('nationalities')->get();
       return view('admin.content.establishment',compact('nationlities','establishments'));
    }


    public function ministry_create()
    {

        // $countries =Countries::pluck('name','id');
        $establishments = Establishment::all();
        $nationlities = DB::table('nationalities')->get();
       return view('admin.content.ministry',compact('nationlities','establishments'));
    }


    public function internal_create()
    {

        // $countries =Countries::pluck('name','id');
        $establishments = Establishment::all();
        $nationlities = DB::table('nationalities')->get();
       return view('admin.content.internal',compact('nationlities','establishments'));
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request){

    //     $request->validate([
    //     'brife' => 'required',
    //     'country' => 'required',
    //     'description' => 'required',
    //     'flag' => 'required',
    // ]);



    $content = new Content;

    // $content->brife = $request['brife'];

    // $content->country =$request['country'];

    // $content->description =$request['description'];


    $content->brife = $request->brife;
   
    $content->meeting_type =$request->meeting_type;
    $content->description =$request->description;
    $content->attendinfo = $request->attendinfo;
$content->establishment_id = $request->establishment_id;
$content->country = $request->country;
    if ($request->hasFile('flag')){
            $imag =$request->file('flag');
            $ext = $imag ->getClientOriginalExtension();
            $name = time() . '.' . $ext;
            $path =  $imag->move('flag',$name);

        }


    $content->flag=$name;

    $content->save();

    //  $content->save();

    // if ($request->hasFile('images')){


    // foreach ($request->images as $image ) {


    //         $ext = $image->getClientOriginalExtension();
    //         $name = time() . '.' . $ext;


    //         $img = new Images;
    //         $img->path = $name;
    //         $img->document_id = $documentation->id;
    //         $img->save();

    //         $image->move('images_workshop',$name);
    //     }


    // }






    // if ($request->hasFile('videos')){


    //     foreach ($request->videos as $video ) {


    //             $ext = $video->getClientOriginalExtension();
    //             $name = time() . '.' . $ext;


    //             $vid = new Videos;
    //             $vid->path = $name;
    //             $vid->document_id = $documentation->id;
    //             $vid->save();

    //             $video->move('vidoes_workshop',$name);
    //         }


    //     }



                  return redirect()->route('content.show',$content->id);



    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

        $content1 = Content::find($id);
        return view('admin.content.show')->with('content1',$content1);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $nationlities = DB::table('nationalities')->get();
        $content_ed = Content::find($id);
        return view('admin.content.edit',compact('content_ed','nationlities'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'brife' => 'required',
            'country' => 'required',
            'description' => 'required',
            'flag' => 'required',
        ]);
        $content = Content::find($id);
        
        $content->brife = $request->brife;
        $content->nationalite_id = $request->nationalite_id;
        $content->description =  $request->description ;
        $content->attendinfo = $request->attendinfo;

        if ($request->hasFile('flag')){
            $imag =$request->file('flag');
            $ext = $imag ->getClientOriginalExtension();
            $name = time() . '.' . $ext;

            $path =  $imag->move('flag',$name);


            $content->flag=$name;
            
            $content->update();

        return redirect()->route('content.show',$content->id);




    }
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $content = Content::find($id);
        $content->delete();

        return back();
    }
}
