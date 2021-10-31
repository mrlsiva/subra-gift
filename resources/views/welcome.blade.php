@extends('layouts.app')



@section('content')

@if ($offlineUser)

    <div class="row" style="min-height: 300px">

        <div class="col-12">

            

            <link rel="stylesheet" href="{{ url('/resources/fonts/material-icon/css/material-design-iconic-font.min.css') }}">



            <link rel="stylesheet" href="{{ url('/resources/css/login.css') }}">



            <section class="signup">

                <div class="container">

                    <div class="signup-content">

                        <div class="signup-form">

                            <h2 class="form-title">Reset your password</h2>

                            <form method="POST" action="{{route('update.password')}}" class="register-form" id="register-form">

                                    @csrf



                                    <div class="form-group">

                                        <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>

                                        <input id="name" type="text" class="@error('name') is-invalid @enderror" name="name" placeholder="Your Name" value="{{$offlineUser->name}}" required autocomplete="name" autofocus>

                                    </div>

                                    <div class="form-group">

                                        <label for="email"><i class="zmdi zmdi-email"></i></label>

                                        <input id="email" type="email" class="@error('email') is-invalid @enderror" name="email" value="{{$offlineUser->email}}"placeholder="Your Email" required autocomplete="email">

                                        @error('email')

                                            <span class="invalid-feedback" role="alert">

                                                <strong>{{ $message }}</strong>

                                            </span>

                                        @enderror

                                    </div>

                                    <div class="form-group">

                                        <label for="old_password"><i class="zmdi zmdi-lock"></i></label>

                                        <input id="old_password" type="password" placeholder="Old Password" name="old_password" required>

                                    </div>

                                    <div class="form-group">

                                        <label for="password"><i class="zmdi zmdi-lock"></i></label>

                                        <input id="password" type="password" placeholder="New Password" class="@error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

                                        @error('password')

                                            <span class="invalid-feedback" role="alert">

                                                <strong>{{ $message }}</strong>

                                            </span>

                                        @enderror

                                    </div>



                                    <div class="form-group">

                                        <label for="password-confirm"><i class="zmdi zmdi-lock-outline"></i></label>

                                        <input id="password-confirm" placeholder="Repeat new password" type="password" name="password_confirmation" required autocomplete="new-password">

                                    </div>



                                    <div class="form-group mb-0">

                                        <div class="col-md-6 offset-md-4">

                                            <button type="submit" class="btn e-series-book">

                                                Update Password

                                            </button>

                                        </div>

                                    </div>

                            </form>

                        </div>

                        <div class="signup-image">

                            <figure><img src="{{ url('/resources/images/registration.png') }}" alt="sing up image"></figure>

                        </div>

                    </div>

                </div>

            </section>

        </div>

    </div> 

@else 

    <div class="">

        @include('includes.carousal')

    </div>

{{-- 
<div class="container">
    <div class="row mt-4">
        <div class="col-md-3 mt-4">
        <div class="product-block">
         <span class="onsale">Sale!</span>
         <div class="product-transition">
         <button class="woosw-btn woosw-btn-14" data-id="14"><i class="fa fa-heart"></i></button>
         <div class="product-image">
         <img src="storage/app/public/uploads/img/mug/White-cup-1.png"></div>
         <a href="#" class="woocommerce-LoopProduct-link woocommerce-loop-product__link"></a></div>
         <div class="product-caption">
         <h3 class="woocommerce-loop-product__title">
         <a href="#">Mug</a></h3>
         <div class="short-description"> A mighty meaty double helping of all the reasons you love our burger.</div> 
         <a href="#"  class="button product_type_simple">
             <i class="fa fa-shopping-cart" aria-hidden="true"></i>
         </a> 
         <span class="price">
         View more...</span>
        </div></div>
        </div>
        
       <div class="col-md-3 mt-4">
        <div class="product-block">
         <span class="onsale">Sale!</span>
         <div class="product-transition">
         <button class="woosw-btn woosw-btn-14" data-id="14"><i class="fa fa-heart"></i></button>
         <div class="product-image">
         <img src="storage/app/public/uploads/img/farmaan/Farmaan-Verticle-113.png"></div>
         <a href="#" class="woocommerce-LoopProduct-link woocommerce-loop-product__link"></a></div>
         <div class="product-caption">
         <h3 class="woocommerce-loop-product__title">
         <a href="#">Farmaan</a></h3>
         <div class="short-description"> A mighty meaty double helping of all the reasons you love our burger.</div> 
         <a href="#"  class="button product_type_simple">
             <i class="fa fa-shopping-cart" aria-hidden="true"></i>
         </a> 
         <span class="price">
         <span class="woocommerce-Price-currencySymbol">View more...</span>
        </div></div>
        </div>

        <div class="col-md-3 mt-4">
        <div class="product-block">
         <span class="onsale">Sale!</span>
         <div class="product-transition">
         <button class="woosw-btn woosw-btn-14" data-id="14"><i class="fa fa-heart"></i></button>
         <div class="product-image">
         <img src="storage/app/public/uploads/img/waterbottle/Stainless-Steel-Blue-Coated-600-ML-46.png"></div>
         <a href="#" class="woocommerce-LoopProduct-link woocommerce-loop-product__link"></a></div>
         <div class="product-caption">
         <h3 class="woocommerce-loop-product__title">
         <a href="#">Water Bottle</a></h3>
         <div class="short-description"> A mighty meaty double helping of all the reasons you love our burger.</div> 
         <a href="#"  class="button product_type_simple">
             <i class="fa fa-shopping-cart" aria-hidden="true"></i>
         </a> 
         <span class="price">
         <span class="woocommerce-Price-currencySymbol">View more...</span>
         </div></div>
        </div>

        <div class="col-md-3 mt-4">
        <div class="product-block">
         <span class="onsale">Sale!</span>
         <div class="product-transition">
         <button class="woosw-btn woosw-btn-14" data-id="14"><i class="fa fa-heart"></i></button>
         <div class="product-image">
         <img src="storage/app/public/uploads/img/pillows/Stain-Square-Pillow-53.png"></div>
         <a href="#" class="woocommerce-LoopProduct-link woocommerce-loop-product__link"></a></div>
         <div class="product-caption">
         <h3 class="woocommerce-loop-product__title">
         <a href="#">Pillows</a></h3>
         <div class="short-description"> A mighty meaty double helping of all the reasons you love our burger.</div> 
         <a href="#"  class="button product_type_simple">
             <i class="fa fa-shopping-cart" aria-hidden="true"></i>
         </a> 
         <span class="price">
         <span class="woocommerce-Price-currencySymbol">View more...</span>
         </div></div>
        </div>
        <div class="col-md-3 mt-4">
        <div class="product-block">
         <span class="onsale">Sale!</span>
         <div class="product-transition">
         <button class="woosw-btn woosw-btn-14" data-id="14"><i class="fa fa-heart"></i></button>
         <div class="product-image">
         <img src="storage/app/public/uploads/img/keychain/Su01-Stones-Heart-Key-Single-Side-140.png"></div>
         <a href="#" class="woocommerce-LoopProduct-link woocommerce-loop-product__link"></a></div>
         <div class="product-caption">
         <h3 class="woocommerce-loop-product__title">
         <a href="#">Keychain</a></h3>
         <div class="short-description"> A mighty meaty double helping of all the reasons you love our burger.</div> 
         <a href="#"  class="button product_type_simple">
             <i class="fa fa-shopping-cart" aria-hidden="true"></i>
         </a> 
         <span class="price">
         <span class="woocommerce-Price-currencySymbol">View more...</span>
         </div></div>
        </div>

        <div class="col-md-3 mt-4">
        <div class="product-block">
         <span class="onsale">Sale!</span>
         <div class="product-transition">
         <button class="woosw-btn woosw-btn-14" data-id="14"><i class="fa fa-heart"></i></button>
         <div class="product-image">
         <img src="storage/app/public/uploads/img/teddybear/Cycle-Teddy-Bear-White-99.png"></div>
         <a href="#" class="woocommerce-LoopProduct-link woocommerce-loop-product__link"></a></div>
         <div class="product-caption">
         <h3 class="woocommerce-loop-product__title">
         <a href="#">Teddy Bear</a></h3>
         <div class="short-description"> A mighty meaty double helping of all the reasons you love our burger.</div> 
         <a href="#"  class="button product_type_simple">
             <i class="fa fa-shopping-cart" aria-hidden="true"></i>
         </a> 
         <span class="price">
         <span class="woocommerce-Price-currencySymbol">View more...</span>
         </div></div>
        </div>

        <div class="col-md-3 mt-4">
        <div class="product-block">
         <span class="onsale">Sale!</span>
         <div class="product-transition">
         <button class="woosw-btn woosw-btn-14" data-id="14"><i class="fa fa-heart"></i></button>
         <div class="product-image">
         <img src="storage/app/public/uploads/img/facemask/Your-own-Face-mask-121.png"></div>
         <a href="#" class="woocommerce-LoopProduct-link woocommerce-loop-product__link"></a></div>
         <div class="product-caption">
         <h3 class="woocommerce-loop-product__title">
         <a href="#">Face Mask</a></h3>
         <div class="short-description"> A mighty meaty double helping of all the reasons you love our burger.</div> 
         <a href="#"  class="button product_type_simple">
             <i class="fa fa-shopping-cart" aria-hidden="true"></i>
         </a> 
         <span class="price">
         <span class="woocommerce-Price-currencySymbol">View more...</span>
         </div></div>
        </div>

        <div class="col-md-3 mt-4">
        <div class="product-block">
         <span class="onsale">Sale!</span>
         <div class="product-transition">
         <button class="woosw-btn woosw-btn-14" data-id="14"><i class="fa fa-heart"></i></button>
         <div class="product-image">
         <img src="storage/app/public/uploads/img/magicmirror/Magic-Mirror-Round-225.png"></div>
         <a href="#" class="woocommerce-LoopProduct-link woocommerce-loop-product__link"></a></div>
         <div class="product-caption">
         <h3 class="woocommerce-loop-product__title">
         <a href="#">Magic Mirror</a></h3>
         <div class="short-description"> A mighty meaty double helping of all the reasons you love our burger.</div> 
         <a href="#"  class="button product_type_simple">
             <i class="fa fa-shopping-cart" aria-hidden="true"></i>
         </a> 
         <span class="price">
         <span class="woocommerce-Price-currencySymbol">View more...</span>
         </div></div>
        </div>
    </div>
</div> --}}

     <div class="container">
        <div class="row slider_title mt-4">

            <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 mt-4 bg-small-line text-left"> <h2 class=""> Our Personalized Products </h2> </div>
    
        </div>
    <div class="row mt-2">
        @foreach($categories as $value)
            {{-- <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 mt-2 bg-small-line  text-left">

                <h3 class="text-left"> {{ $value->series_name }} </h3>

                <a style="float: right;" href="series/{{ $value->series_table_name }}">Shop</a> 

            </div> --}}
            <div class="col-6 col-sm-6 col-md-4 col-lg-3 col-xl-3 mt-4">
                <div class="product-block">
                 <span class="onsale">Sale!</span>
                 <div class="product-transition">
                 {{-- <button class="woosw-btn woosw-btn-14" data-id="14"><i class="fa fa-heart"></i></button> --}}
                 <div class="product-image">
                 <img src="storage/app/public/uploads/img/{{ $value->series_table_name }}/{{ $value->series_table_name }}.png"></div>
                 <a href="series/{{ $value->series_table_name }}" class="woocommerce-LoopProduct-link woocommerce-loop-product__link"></a></div>
                 <div class="product-caption">
                 <h3 class="woocommerce-loop-product__title">
                 <a href="series/{{ $value->series_table_name }}">{{ $value->series_name }}</a></h3>
                 <div class="short-description">{{ $value->series_desc }}</div> 
                 <a href="series/{{ $value->series_table_name }}"  class="button product_type_simple">
                     View More...
                 </a> 
                
                 </div></div>
                </div>


        @endforeach

    </div>
    <div class="row mt-4">

        <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">

            <img class='img-fluid' src="{{ url('/resources/images/8-1.jpg') }}">

        </div>

    </div>
    </div>

    <div class="container mb-5">

    <div class="row slider_title mb-2">

        <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 mt-4 bg-small-line  text-left"> <h2 class=""> Launch Sale Offer </h2> </div>

    </div>

    <div class="row">

        <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 mt-2">

            <img class='img-fluid' src="{{ url('/resources/images/mr.jpeg?v1') }}">

        </div>

        <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 mt-2">

            <img class='img-fluid' src="{{ url('/resources/images/3.jpg?v1') }}">

        </div>

    </div>

    </div>

@endif
    <script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
    <script src="resources/js/slick.js" type="text/javascript" charset="utf-8"></script>
@endsection