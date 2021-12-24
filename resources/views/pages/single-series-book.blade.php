@extends('layouts.app')

@section('content')
   <div class="container-fluid">
      <div class="row mb-2">
         <div class="col-12 text-center prod_title" style="background-image: url(../storage/app/public/uploads/img/sidetop-img/{{$timage}});">
               <h2 class="mb-2 mt-2"> {{$series_name}} </h2>
         </div>
      </div>
      <div class="row e-series">
         <div class="col-12 col-sm-12 col-md-2 col-lg-2 col-xl-2 text-center hide-mobile">
            <img src="{{ url('storage/app/public/uploads/img/sidetop-img/'.$simage) }}" class="img-responsive" />
         </div>
         <div class="col-12 col-sm-12 col-md-10 col-lg-10 col-xl-10 text-center">
         <div class="row">
            <nav aria-label="breadcrumb">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{{ url('/') }}">Home</a></li>
                  <li class="breadcrumb-item active" aria-current="page">{{$series_name}}</li>
               </ol>
            </nav>
         </div>
            <div class="row">
               @foreach ($relatedProducts as $value)
               <a href="{{ url('/product/'.$series_id.'/'.$value->sku) }}" class="col-6 col-sm-4 col-md-4 col-lg-3 col-xl-3  hover-effect container-hover">
               <div class="white-bg">
                  <img src="{{ url('storage/app/public/uploads/img/'.$series_image.'/'. $value->thumb_img) }}" class="img-responsive image white-bg-img" />
                  </div>
                  <h6 class="mb-2 mt-2 show_one_line">  {{$value->book_title}} </h6>
                  
                  <h6 class="mb-4"> <span>₹ {{ $value->actual_price }}</span></h6>

                  
               </a>
               @endforeach
            </div>
         </div> 
      </div> 
   </div>

   @endsection