
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
                      <h4 class="card-title" id="horz-layout-basic">اضافة اجتماع مع الوزارة</h4>
                      <a class="heading-elements-toggle"><i class="fa fa-ellipsis-v font-medium-3"></i></a>
                        </div>
                        <div class="card-content collpase show">
                      <div class="card-body">

                        <form class="form form-horizontal" method = "POST" enctype="multipart/form-data" action="{{route('content.store')}}">



                        {{ csrf_field()}}
                          <div class="form-body">
                            <h4 class="form-section"><i class="ft-fulag"></i> الاجتماع</h4>


                            <input type="text" value="الوزارة" class="form-control" name="meeting_type" hidden>


                           {{-- <div class="form-group row">
                                    <label class="col-md-1 label-control" for="projectinput1">المؤسسة</label>
                                    <div class="col-md-9">
                                        <select type="text" id="projectinput1" class="form-control" placeholder="اسم الدولة "
                                      name="establishment_id">
                                      <option></option>
                                       @foreach($establishments as $establishment)
                                       <option value="{{ $establishment->id}}">{{ $establishment->name_ar}}</option>
                                       @endforeach

                                        </select>
                                    </div>
                                  </div>--}}














                                    <input value="اجتماع مع الوزارة" type="text" name="country" hidden>

                            {{--<div class="form-group row">
                              <label class="col-md-1 label-control" for="projectinput1">اسم الدولة</label>
                              <div class="col-md-9">
                                  <select type="text" id="projectinput1" class="form-control" placeholder="اسم الدولة "
                                name="country">
                                <option></option>
                                 @foreach($nationlities as $nationlitie)
                                 <option value="{{$nationlitie->name_ar}}">{{$nationlitie->name_ar}}</option>
                                 @endforeach

                                  </select>
                              </div>
                                </div>--}}





                            <div class="form-group row">
                              <label class="col-md-1 label-control" for="projectinput1"> صورة غلاف للاجتماع</label>
                              <div class="col-md-9">
                                <input type="file" id="projectinput1" class="form-control" placeholder=" "
                                name="flag">
                              </div>
                            </div>


                            <div class="form-group row">
                                <label class="col-md-1 label-control" for="projectinput1">عن الاجتماع</label>
                                <div class="col-md-9">
                                    <textarea name="description"  cols="30" rows="15" class="ckeditor"> </textarea>
                                </div>
                              </div>

                              <hr>



                              <div class="form-group row">
                                <label class="col-md-1 label-control" for="projectinput1"> معلومات الحضور</label>
                                <div class="col-md-9">
                                    <textarea name="attendinfo"  cols="30" rows="15" class="ckeditor"> </textarea>
                                </div>
                              </div>









                              <hr>
                              <div class="form-group row">
                                  <label class="col-md-1 label-control" for="projectinput1">تفاصيل ومخرجات الاجتماع</label>
                                  <div class="col-md-9">
                                      <textarea name="brife" id="ckeditor" cols="30" rows="15" class="ckeditor"> </textarea>
                                  </div>
                                </div>




                        </div>

                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary" style="margin-right: 29.5%; width:30%;">
                              <i class="fa fa-check-square-o"></i> Save
                            </button>
                          </div>










               </form>

            </div>


                 </div>
             </div>




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
