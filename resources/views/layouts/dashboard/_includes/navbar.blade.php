 
 
 <nav class="header-navbar navbar-expand-md navbar navbar-with-menu fixed-top navbar-dark navbar-shadow">
    <div class="navbar-wrapper">
      <div class="navbar-header">
        <ul class="nav navbar-nav flex-row">
          <li class="nav-item mobile-menu d-md-none mr-auto"><a class="nav-link nav-menu-main menu-toggle hidden-xs" href="#"><i class="ft-menu font-large-1"></i></a></li>
          <li class="nav-item">
            <a class="navbar-brand" href="index.html">
              <img class="brand-logo" alt="robust admin logo" src="{{asset('images/logo/logo-light-sm.png')}}">
              <h3 class="brand-text">Robust Admin</h3>
            </a>
          </li>
          <li class="nav-item d-md-none">
            <a class="nav-link open-navbar-container" data-toggle="collapse" data-target="#navbar-mobile"><i class="fa fa-ellipsis-v"></i></a>
          </li>
        </ul>
      </div>

      <div class="navbar-container content">
        <div class="collapse navbar-collapse" id="navbar-mobile">
          <ul class="nav navbar-nav mr-auto float-left">
            <li class="nav-item d-none d-md-block"><a class="nav-link nav-menu-main menu-toggle hidden-xs" href="#"><i class="ft-menu"> 
            </i></a></li>


            <ul class="nav navbar-nav float-left">
            
                        
            <li class="dropdown dropdown-user nav-item ">
              <a class="dropdown-toggle nav-link dropdown-user-link" href="#" data-toggle="dropdown">
                <span class="avatar avatar-online">
                  <img src="{{asset('images/portrait/small/avatar-s-1.png')}}"
                  alt="avatar"><i></i></span>
                <span class="user-name"> {{ Auth::user()->name }}</span>
              </a>
              <div class="dropdown-menu dropdown-menu-right av"><a class="dropdown-item" href="#"><i class="ft-user"></i> Edit Profile</a>
                <a
                class="dropdown-item" href="#"><i class="ft-mail"></i> My Inbox</a>
                  <a class="dropdown-item" href="#"><i class="ft-check-square"></i> Task</a><a class="dropdown-item"
                  href="#"><i class="ft-message-square"></i> Chats</a>
                  <div class="dropdown-divider"></div><a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault();
                                    
                                                     document.getElementById('logout-form').submit();"><i class="ft-power"></i> {{ __('Logout') }}</a>

                                                       <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                                          @csrf
                                                        </form>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </nav>