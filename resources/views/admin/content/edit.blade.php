
@extends('layouts.dashboard.master-panel')
@section('css')
<link rel="stylesheet" type="text/css" href="{{asset('vendors/css/ui/prism.min.css')}}">

@endsection
@section('content')

<div class="app-content content ">

  <div class="content-body">


    <div class="row">
          <div class="col-md-12">
               <div class="card">
                    <div class="card-header">
                      <h4 class="card-title" id="horz-layout-basic">تعديل بيانات الورشة</h4>
                      <a class="heading-elements-toggle"><i class="fa fa-ellipsis-v font-medium-3"></i></a>
                        </div>
                        <div class="card-content collpase show">
                      <div class="card-body">
                        <form class="form form-horizontal" method = "POST" enctype="multipart/form-data" action="{{route('content.update',$content_ed->id)}}">
                           @csrf
                          <div class="form-body">
                            <h4 class="form-section"><i class="ft-fulag"></i> الدولة</h4>



@if($content_ed->meeting_type == 'مكتب' || $content_ed->meeting_type ==  'وفد')
                            <div class="form-group row">

                              <label class="col-md-1 label-control" for="projectinput1">اسم الدولة</label>
                              <div class="col-md-9">
                                <select type="text" id="projectinput1" class="form-control" placeholder="اسم الدولة "
                                name="nationalite_id">
                                <option></option>
                                 @foreach($nationlities as $nationlitie)
                                 <option value="{{$nationlitie->id}}">{{$nationlitie->name_ar}}</option>
                                 @endforeach
 
                                  </select>
                                  <span>الدولة : {{ $content_ed->country }}</span>
                              </div>
                            </div>

@endif



                            <div class="form-group row">
                              <label class="col-md-1 label-control" for="projectinput1">علم الدولة</label>
                              <div class="col-md-9">
                                <input type="file" id="projectinput1" class="form-control" placeholder=" "
                                name="flag" value="{{ $content_ed->flag }}">
                              </div>
                            </div>




                            <div class="form-group row">
                                <label class="col-md-1 label-control" for="projectinput1">وصف الورشة</label>
                                <div class="col-md-9">
                                    <textarea name="description" id="ckeditor" cols="30" rows="15" class="ckeditor"  > {{ $content_ed->description }}</textarea>
                                </div>
                            </div>

                            
                            <hr>




                            <div class="form-group row">
                              <label class="col-md-1 label-control" for="projectinput1">معلومات الحضور </label>
                              <div class="col-md-9">
                                  <textarea name="attendinfo" id="ckeditor" cols="30" rows="15" class="ckeditor"  > {{ $content_ed->attendinfo }}</textarea>
                              </div>
                          </div>




                            <hr>


                              <div class="form-group row">
                                    <label class="col-md-1 label-control" for="projectinput1">وصف الورشة</label>
                                    <div class="col-md-9">
                                        <textarea name="brife" id="ckeditor" cols="30" rows="15" class="ckeditor" value=" " > {{ $content_ed->brife }}</textarea>
                                    </div>
                              </div>













                        </div>

                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary" style="margin-right: 29.5%; width:30%;">
                              <i class="fa fa-check-square-o"></i> Save
                            </button>
                          </div>



                      </div>






               </form>












             </div>
          </div>
       </div>












       </div>
    </div>
  </div>
</div>





















@endsection
@section('js')




<script src="{{asset('vendors/js/editors/ckeditor/ckeditor.js')}}" type="text/javascript"></script>


           <script src="{{asset('vendors/js/extensions/dropzone.min.js')}}" type="text/javascript"></script>
           <script src="{{asset('vendors/js/ui/prism.min.js')}}" type="text/javascript"></script>
           <script src="{{asset('js/scripts/extensions/dropzone.js')}}" type="text/javascript"></script>
@endsection
