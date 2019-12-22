@extends('layouts.app')

@section('content')
<div class="app-content content">
    <div class="content-wrapper">
      <div class="content-header row">
      </div>
      <div class="content-body">
        <section class="flexbox-container">
          <div class="col-12 d-flex align-items-center justify-content-center">
            <div class="col-md-4 col-10 box-shadow-2 p-0">
              <div class="card border-grey border-lighten-3 m-0">
                <div class="card-header border-0">
                  <div class="card-title text-center">
                    <img src="../../../app-assets/images/logo/logo-dark.png" alt="branding logo">
                  </div>
                  <h6 class="card-subtitle line-on-side text-muted text-center font-small-3 pt-2">
                    <span>Login with Robust</span>
                  </h6>
                </div>
                <div class="card-content">
                  <div class="card-body">


                    <form class="form-horizontal"  method="POST"  action="{{route('login')}}" novalidate>
                         
                    @csrf

                      <fieldset class="form-group position-relative has-icon-left">
                        <input type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }} input-lg" name="email"  id="email" placeholder="email"
                        tabindex="1" value="{{ old('email') }}" required autofocus data-validation-required-message="Please enter your username.">


                        @if ($errors->has('email'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                        <div class="form-control-position">
                          <i class="ft-user"></i>
                        </div>
                        <div class="help-block font-small-3"></div>
                      </fieldset>



                      <fieldset class="form-group position-relative has-icon-left">
                        <input type="password"class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}  input-lg" name="password" required id="password" placeholder="Enter Password"
                        tabindex="2"  data-validation-required-message="Please enter valid passwords.">


                        @if ($errors->has('password'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif

                        <div class="form-control-position">
                          <i class="fa fa-key"></i>
                        </div>
                        <div class="help-block font-small-3"></div>
                      </fieldset>
                      <div class="form-group row">
                        <div class="col-md-6 col-12 text-center text-md-left">
                           
                        </div>
                        <div class="col-md-6 col-12 text-center text-md-right">
                        
                        @if (Route::has('password.request'))
                                    <a class="card-link   btn btn-link" href="{{ route('password.request') }}">
                                        {{ __('Forgot Your Password?') }}
                                    </a>
                                @endif
                        
                       </div>
                      </div>
                      <button type="submit" class="btn btn-danger btn-block btn-lg"><i class="ft-unlock"></i> {{ __('Login') }}</button>
                    </form>
                  </div>
                </div>
                <div class="card-footer border-0">
                  <p class="card-subtitle line-on-side text-muted text-center font-small-3 mx-2 my-1">
                    <span>New to Robust ?</span>
                  </p>
                  <a href="{{route('register')}}" class="btn btn-info btn-block btn-lg mt-3"><i class="ft-user"></i> Register</a>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
    </div>
  </div>

@endsection
