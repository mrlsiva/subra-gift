@extends('layouts.app')

@section('content')
<div class="container pt-3">
    <div class="row border-bottom-product mb-0">
        <nav aria-label="breadcrumb">
           <ol class="breadcrumb">
           <li class="breadcrumb-item"><a href="{{ url('/') }}">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">My Orders</li>
           </ol>
        </nav>
    </div>

    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="">
                <div class="">
                    @if($orders != null && count($orders) > 0)
                        <table class="table table-hover" id="orders-table">
                          <thead>
                            <tr>
                              <th class="th-sm">No </th>
                              <!-- <th class="th-sm">Name </th>
                              <th class="th-sm">Phone</th> -->
                              <th class="th-sm">Transaction ID</th>
                               <th class="th-sm">Amount</th>
                              <th class="th-sm">Date</th>
                              <th class="th-sm">Status</th>
                              <th class="th-sm">Action</th>
                            </tr>
                          </thead>

                          <tbody>
                            @php $i = 0; @endphp
                            @foreach($orders as $ord)
                               <tr>
                                  <td>{{ ++$i }}</td>
                                  {{--<td>{{$ord->firstname}}</td>    
                                  <td> {{$ord->phone}} </td> --}}
                                  <td> {{$ord->txn_id}} </td>
                                  <td> {{$ord->amount}} </td>
                                  <td> {{ date('d-m-Y H:i', strtotime($ord->created_at) ) }} </td>
                                  <td> 
                                  
                                  @if($ord->ship_status == 1)
                                  {{ trans('app.order_placed') }}
                                  @elseif($ord->ship_status == 2)
                                  {{ trans('app.packed') }}
                                  @elseif($ord->ship_status == 3)
                                  {{ trans('app.out_for_delivery') }}
                                  @elseif($ord->ship_status == 4)
                                  {{ trans('app.delivered') }}
                                  @elseif($ord->ship_status == 5)
                                  {{ trans('app.cancelled') }}
                                  @endif
                                  </td>
                                  <td> <a href="{{ route('order.details', $ord->id) }}" class="btn btn-primary">View</a></td>
                                </tr>
                            @endforeach
                          </tbody>
                        </table>
                    @else
                        <div class="text-center empty-cart mt-3">
                            <i class="fa fa-shopping-cart d-block fa-5x" aria-hidden="true"></i>

<h2 class="font-weight-bold mt-3">No Orders!   </h2>
<p class="h5 mb-3">You don't have any orders in your history.</p>


<button type="submit" id="checkout_submit" class="btn e-series-book cn-btn mb-5 mt-2">
                        Continue Shop
                    </button>
                     </div>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
@endsection