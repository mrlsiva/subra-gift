@extends('layouts.app')

@section('content')
   <style>

nav > .nav.nav-tabs{

  border: none;
    color:#fff;
    background:#272e38;
    border-radius:0;

}
nav > div a.nav-item.nav-link,
nav > div a.nav-item.nav-link.active
{
  border: none;
    padding: 18px 25px;
    color:#fff;
    background:#272e38;
    border-radius:0;
}
nav > div a.nav-item.nav-link.active
{
    background:#da3340 !important;
    }
nav > div a.nav-item.nav-link.active:after
 {
  content: "";
  position: relative;
  bottom: -59px;
  left: -10%;
  border: 15px solid transparent;
  border-top-color: #da3340 ;
}
.tab-content{
  background: #fdfdfd;
    line-height: 25px;
    border: 1px solid #ddd;
    border-top:5px solid #da3340;
    border-bottom:5px solid #da3340;
    padding:30px 25px;
}
.tab-content.inside.pt-3 {
  background: #fdfdfd;
    line-height: 25px;
    border: 0px solid #ddd;
    border-top:5px solid #fff;
    border-bottom:5px solid #fff;
    padding:30px 25px;
}
nav > div a.nav-item.nav-link:hover,
nav > div a.nav-item.nav-link:focus
{
  border: none;
    background: #da3340;
    color:#fff;
    border-radius:0;
    transition:background 0.20s linear;
}
.table .thead-dark th {
    color: #fff;
    background-color: #343a40;
    border-color: #454d55;
}
.panel.panel-default {
    max-width: 400px;
    margin: 0 auto;
}
   </style>


<div class="container mt-2">
@if (session('profileMessage'))
    <div class="row alert alert-success" role="alert">
        {{ session('profileMessage') }}
    </div>
@endif
@if (session('passwordMessage'))
    <div class="row alert alert-success" role="alert">
        {{ session('passwordMessage') }}
    </div>
@endif

</div>
<div class="container">
      <div class="col mb-3">
        <div class="  ">
          <div class="card-body">
            <div class="e-profile">
              <div class="row">
                <div class="col mb-3 mt-2">
                  <div class="border mt-5 mb-2 mb-sm-0">
                    <h6 class="py-2 px-2" ><i class="fa fa-user-circle fa-2x" aria-hidden="true"></i> Account Info</h6>
                     <div class="px-3 mb-2">
                    <p class="pt-sm-2 pb-1 mb-0 text-nowrap"> User Name : {{$user->name}}  </p>
                    <p class="pt-sm-2 pb-1 mb-0 text-nowrap">Email : <a href="mailto:someone@example.com"> {{$user->email}} </a></p>
                    <!-- <div class="text-muted"><small>Last seen 2 hours ago</small></div> -->
</div>
                  </div>
                  <!-- <div class="text-center text-sm-right">
                    <span class="badge badge-secondary">administrator</span>
                    <div class="text-muted"><small>Joined 09 Dec 2017</small></div>
                  </div> -->
                </div>
              </div>
             <div class="row">
               <div class="col ">
                 <div class="border">
               <h6 class="py-2 px-2" ><i class="fa fa-pencil-square-o fa-2x" aria-hidden="true"></i> Update Profile </h6>
                 <form class="form" novalidate="" method="POST" action="{{ route('profile.edit') }}">
                    <div class="">
                      <div class="col-12">
                        <div class="row">
                       
                        @csrf
                          <!-- <input type="text" name="user"  /> -->
                          <!-- <input type="text" /> -->
                          <!-- <input  /> -->
                      
                          <div class="col">
                          
                          <div class="mb-2"><b>Update Name / Email</b></div>
                            <div class="form-group">
                              <label>Full Name</label>
                              <input class="form-control" type="text" name="user" placeholder="{{$user->name}}" value="{{$user->name}}">
                            </div>
                          </div>

                        </div>
                        <div class="row">
                          <div class="col">
                            <div class="form-group">
                              <label>Email</label>
                              <input class="form-control" type="text"  name="email" value="{{$user->email}}">
                            </div>
                          </div>
                        </div>
                        <div class="row">
                      <div class="col mb-3">
                        <div class="px-2 col d-flex justify-content-end">
                        <button class="btn btn-primary" type="submit" value="Update Profile">Update Profile</button>
                      </div>
                      </div>
                      
                    </div>
                    
                  </form>
</div>
</div>
</div>
              <div class="border inside mt-3">
           
                      <div class="">
                          <h6 class="py-2 px-2" ><i class="fa fa-unlock-alt fa-2x" aria-hidden="true"></i></i> Change Password </h6>
                      <div class="col-12 col-sm-12 mb-3">
                      <form method="POST" action="{{ route('password.edit') }}">
                    @csrf

                      
                        <div class="row">
                          <div class="col">
                            <div class="form-group">
                              <label>Current Password</label>
                              <input class="form-control" type="password" name="old_password" value="" placeholder="Old password" required>
                            </div>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col">
                            <div class="form-group">
                              <label>New Password</label>
                              <input class="form-control" id="txtNewPassword" type="password" name="password" value="" placeholder="••••••" required>
                            </div>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col">
                            <div class="form-group">
                              <label>Confirm <span class="d-none d-xl-inline">Password</span></label>
                              <input class="form-control" id="txtConfirmPassword" type="password" placeholder="••••••" required></div>
                          </div>
                        </div>
                        <div id="divCheckPasswordMatch"></div>
                        <div class="row">
                      <div class="col d-flex justify-content-end">
                        <button class="btn btn-primary" disabled="true" id="btn-submit" type="submit" value="Update Profile">Update Password</button>
                      </div>
                    </div>
                  </form>
                      </div>
                    </div>
                    </div>
                   <script type="text/javascript">
                    $(document).ready(function () {
                      $("#txtNewPassword, #txtConfirmPassword").keyup(checkPasswordMatch);
                    });

                    function checkPasswordMatch() {
                      var password = $("#txtNewPassword").val();
                      var confirmPassword = $("#txtConfirmPassword").val();

                      if (password !== confirmPassword){
                        $("#divCheckPasswordMatch").html("Passwords do not match!");
                          $("#btn-submit").attr('disabled', 'true');
                      }
                      else {
                        $("#divCheckPasswordMatch").html("Passwords match.");
                           $("#btn-submit").removeAttr('disabled');
                      }
                          
                  }

                    </script>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

    </div>

   @endsection