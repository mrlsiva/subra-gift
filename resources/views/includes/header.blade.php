<nav class="navbar navbar-inverse fixed-top container-fluid">
  <div class="row">
     <button class="navbar-toggler navbar-toggler-left" type="button">
        <span class="navbar-toggler-icon" onclick="openNav()"></span>
    </button>
    <div class="col-4 col-sm-4 col-md-6 col-lg-6 col-xl-6 red m-48 p-0">
      <a class="navbar-brand shrink" href="{{ url('/') }}"><img src="{{ url('/resources/img/logo1.png') }}" /></a>
    </div>
    <div class="col-8 col-sm-8 col-md-6 col-lg-6 red m-48 col-xl-6 p-0">
      <ul class="navbar-nav top-static-nav row">
      @guest

          <li class="nav-item  text-right" id="myorders">
              <a class="nav-link" href="{{ route('order.list') }}">{{ __('My Orders') }}</a>
          </li>

          <li class="nav-item text-right">
              <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
          </li>
         
        @else
        <!-- <li class="col-2 col-sm-3 col-md-3 col-lg-6  col-xl-6"> </li> -->
        <li class="nav-item p-0 text-right dropdown">
            <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre> Hello,  {{ Auth::user()->name }} <span class="caret"></span>
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="{{ url('myorders') }}">
                My Orders
              </a>

              <a class="dropdown-item" href="{{ route('logout') }}"
                  onclick="event.preventDefault();
                                document.getElementById('logout-form').submit();">
                  {{ __('Logout') }}
              </a>
              <!-- <a class="dropdown-item" href="{{url('/membership-account')}}">Membership Account</a> -->
              <!-- <a class="dropdown-item" href="{{url('/cart/view')}}">Cart</a> -->
              <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                  @csrf
              </form>
          </div>
      </li>
      <li class="nav-item text-center"> 
        <a class="nav-link" href="{{url('/cart/view')}}">
              <button type="button" class="btn btn-light cart-btn"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm7 0a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"/>
              </svg> Cart <span id="totalQty" class="badge badge-danger"> @if(session()->has('qty')) {{session('qty')}}  @else  0 @endif</span>
             </button>
        </a>
      </li>
        @endguest
      </ul>
    </div>
      <div class="sidenav"  id="mySidenav">
         <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <ul class="navbar-nav slide-nav-subra">
          <li class="nav-item text-center" style="border: none;">
          <a class="slide-logo" href="{{ url('/') }}"><img src="{{ url('/resources/img/logo1.png') }}" /></a>

          </li>
          <li class="nav-item text-center mt-2">
            <a class="nav-link" href="{{ url('/') }}">Home</a>
          </li>
          <li class="nav-item text-center">
            <a class="nav-link" href="{{ url('/aboutus') }}">AboutUs</a>
          </li>
           <li class="nav-item text-center">
            <a class="nav-link" href="{{ url('/terms-and-conditions') }}">Terms and Policy</a>
          </li>
          
        </ul>
      </div>
  </div>
  <script>
    $(window).scroll(function() {
  if ($(document).scrollTop() < 50) {
    $('.navbar-brand').addClass('shrink');
    $('.add').show();
  } else {
    $('.navbar-brand').removeClass('shrink');
    $('.add').hide();
    
  }
});
function openNav() {
  document.getElementById("mySidenav").style.width = "350px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
  </script>
</nav>