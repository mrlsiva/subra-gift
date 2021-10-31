@extends('layouts.app')

@section('content')
<div class="success-cart  text-center" style="min-height: 200px;">
<i class="fa fa-check-circle fa-5x d-block mt-5" aria-hidden="true"></i>

    <h3 class="card-title mt-3">Payment Successful</h3>
    <p class="px-3">Your payment was successfull. You can now continue with shop.</p>
    <!-- <p class="card-text">With supporting text below as a natural lead-in to additional content.</p> -->
    <a href="{{url('myorders')}}" class="btn btn-primary mx-auto cn-btn mt-4 mb-5">View Orders</a>
</div>
@endsection