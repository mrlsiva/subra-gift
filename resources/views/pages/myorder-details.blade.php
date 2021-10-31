@extends('layouts.app')

@section('content')
<link href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'>
<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'></script>
<link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<style>
.card {
    z-index: 0;
    /*background-color: #ECEFF1;*/
    /*padding-bottom: 20px;
    margin-top: 90px;
    margin-bottom: 90px;
    border-radius: 10px*/
}

.top {
    padding-top: 40px;
    padding-left: 13% !important;
    padding-right: 13% !important
}

#progressbar {
    margin-bottom: 30px;
    overflow: hidden;
    color: #455A64;
    padding-left: 0px;
    margin-top: 30px
}

#progressbar li {
    list-style-type: none;
    font-size: 13px;
    width: 25%;
    float: left;
    position: relative;
    font-weight: 400
}

#progressbar .step0:before {
    font-family: FontAwesome;
    content: "\f10c";
    color: #fff
}

#progressbar li:before {
    width: 40px;
    height: 40px;
    line-height: 45px;
    display: block;
    font-size: 20px;
    background: #C5CAE9;
    border-radius: 50%;
    margin: auto;
    padding: 0px
}

#progressbar li:after {
    content: '';
    width: 100%;
    height: 12px;
    background: #C5CAE9;
    position: absolute;
    left: 0;
    top: 16px;
    z-index: -1
}

#progressbar li:last-child:after {
    border-top-right-radius: 10px;
    border-bottom-right-radius: 10px;
    position: absolute;
    left: -50%
}

#progressbar li:nth-child(2):after,
#progressbar li:nth-child(3):after {
    left: -50%
}

#progressbar li:first-child:after {
    border-top-left-radius: 10px;
    border-bottom-left-radius: 10px;
    position: absolute;
    left: 50%
}

#progressbar li:last-child:after {
    border-top-right-radius: 10px;
    border-bottom-right-radius: 10px
}

#progressbar li:first-child:after {
    border-top-left-radius: 10px;
    border-bottom-left-radius: 10px
}

#progressbar li.active:before,
#progressbar li.active:after {
    background: #651FFF
}

#progressbar li.active:before {
    font-family: FontAwesome;
    content: "\f00c"
}

.icon {
    width: 60px;
    height: 60px;
    margin-right: 15px
}

.icon-content {
    padding-bottom: 20px
}

@media screen and (max-width: 992px) {
    .icon-content {
        width: 50%
    }
}
</style>
<div class="container pt-3">
    <div class="row border-bottom-product mb-0">
        <nav aria-label="breadcrumb">
           <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="{{ url('/') }}">Home</a></li>
              <li class="breadcrumb-item"><a href="{{ route('order.list') }}">My Orders</a></li>
              <li class="breadcrumb-item active" aria-current="page">Order Details</li>
           </ol>
        </nav>
    </div>

    <div class="row justify-content-center">
      <div class="col-md-12">
        <div class="card"> 
    <!-- Order status -->
    <div class="container px-1 px-md-4 py-5 mx-auto">
      <div class="card">
          <!-- <div class="row d-flex justify-content-between px-3 top">
              <div class="d-flex">
                  <h5>ORDER <span class="text-primary font-weight-bold">#Y34XDHR</span></h5>
              </div>
              <div class="d-flex flex-column text-sm-right">
                  <p class="mb-0">Expected Arrival <span>01/12/19</span></p>
                  <p>USPS <span class="font-weight-bold">234094567242423422898</span></p>
              </div>
          </div>  -->

          <!-- Add class 'active' to progress -->
          <div class="row d-flex justify-content-center">
              <div class="col-12">
                  <ul id="progressbar" class="text-center">
                      <li class="active step0"></li>
                      <li class="@if(in_array($order->ship_status,[2,3, 4])) active @endif step0"></li>
                      <li class="@if(in_array($order->ship_status,[3, 4])) active @endif step0"></li>
                      <li class="step0 @if($order->ship_status == 4) active @endif"></li>
                  </ul>
              </div>
          </div>
          <div class="row justify-content-between top">
              <div class="row d-flex icon-content"> <img class="icon" src="https://i.imgur.com/9nnc9Et.png">
                  <div class="d-flex flex-column">
                      <p class="font-weight-bold">Order <br/>Placed</p>
                  </div>
              </div>
              <div class="row d-flex icon-content"> <img class="icon" src="https://i.imgur.com/u1AzR7w.png">
                  <div class="d-flex flex-column">
                      <p class="font-weight-bold">Packed<!-- <br>Shipped --></p>
                  </div>
              </div>
              <div class="row d-flex icon-content"> <img class="icon" src="https://i.imgur.com/TkPm63y.png">
                  <div class="d-flex flex-column">
                      <p class="font-weight-bold">Out For<br>Delivery</p>
                  </div>
              </div>
              <div class="row d-flex icon-content"> <img class="icon" src="https://i.imgur.com/HdsziHP.png">
                  <div class="d-flex flex-column">
                      <p class="font-weight-bold">Delivered<!-- <br>Arrived --></p>
                  </div>
              </div>
          </div>
      </div>
    </div>
          
          <div class="card-body">                    
                  @if(!empty($orders))
                    <table class="table table-hover" id="orders-table">
                      <thead>
                        <tr>
                          <th class="th-sm">No </th>
                          <th class="th-sm">Product</th>
                          <th class="th-sm">Name </th>
                          <th class="th-sm">Attach Image</th>
                          <th class="th-sm">Attach Text</th>
                          <th class="th-sm">Quantity </th>
                          <th class="th-sm">Price</th>
                          <th class="th-sm">Total Price</th>
                        </tr>
                      </thead>

                      <tbody>
                        @php $i = 0; @endphp
                        @foreach($orders as $ord)
                           <tr>
                              <td>{{ ++$i }}</td>
                              <td><img src="{{ $ord['product_image'] }}" width="100" /></td>
                              <td> {{ $ord['book_title'] }} </td>
                              <td> <img src="{{ $ord['attach_image_url'] }}" width="100" /> </td>
                              <td> {{ $ord['attach_text'] }} </td>
                              <td> {{ $ord['qty'] }} </td>
                              <td> {{ $ord['price'] }} </td>
                              <td> {{ $ord['total_price'] }} </td>
                            </tr>
                        @endforeach
                        <tr>
                            <td colspan="7" align="right">Sub Total</td>
                            <td>{{ $order->sub_total }}</td>
                        </tr>
                        <tr>
                            <td colspan="7" align="right">Delivery Charge</td>
                            <td>{{ $order->dvy_charge }}</td>
                        </tr>
                        <tr>
                            <td colspan="7" align="right">Discount</td>
                            <td>{{ $order->coupon_amount }}</td>
                        </tr>
                        <tr>
                            <td colspan="7" align="right">Total</td>
                            <td>{{ $order->amount }}</td>
                        </tr>
                      </tbody>
                    </table>
                  @endif
          </div>
        </div>
    </div>
  </div>
</div>
@endsection