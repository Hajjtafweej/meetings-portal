@extends('layouts.dashboard.master-panel')
@section('css')

@endsection
@section('content')
<div class="app-content content">
<div class="content-wrapper">



        <div class="row">
                <div class="col-12">
                  <div class="card">
                    <div class="card-header">
                      <h4 class="card-title">الورش</h4>
                      <a class="heading-elements-toggle"><i class="fa fa-ellipsis-v font-medium-3"></i></a>
                      <div class="heading-elements">
                        <ul class="list-inline mb-0">
                          <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                          <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                          <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                          <li><a data-action="close"><i class="ft-x"></i></a></li>
                        </ul>
                      </div>
                    </div>
                    <div class="card-content collapse show">
                      <div class="card-body card-dashboard">
                        <p class="card-text"></p>
                        <table class="table table-striped table-bordered zero-configuration  text-center">
                          <thead>
                            <tr>
                            <th>م </th>
                              <th>اسم الدولة </th>


                              <th>الإعدادت </th>
                            </tr>
                          </thead>
                          <tbody>
                                @foreach($contents as $content)


                            <tr>
                                <td>{{$loop->index+1}}</td>
                                <td>{{ $content->country}}</td>


                                  <td>
                                  <a href="/admin/content/{{ $content->id}}">
                                    <button type="button" class="btn btn-primary "><i class="fa fa-eye"> </i></button>
                                  </a>
                                  <a href="/admin/content/{{ $content->id}}/edit">
                                    <button type="button" class="btn btn-warning  "><i class="fa fa-file-o"> </i></button>
                                  </a>

                                    <form method="POST" action="{{ route('content.destroy',$content->id) }}">
                                            @csrf
                                            @method('delete')
                                    {{-- <button type="submit" class="btn btn-danger   "><i class="fa fa-trash" > </i></button> --}}

                                    <button onclick="return confirm('متأكد تبغى تحذف?')" type="submit" class="btn btn-danger" style="margin-right: 140px; margin-top:-60px;"><i class="fa fa-trash" > </i></button>
                                    </form>

                                </td>


                            </tr>
                            @endforeach

                          </tbody>

                        </table>
                      </div>
                    </div>
                  </div>
                </div>
              </div>


    </div>
</div>




@endsection
@section('js')




@endsection
