@extends('layouts.appAdmin')

@section('content')
<div class="container-fliud">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">Order Details

                <a href="{{ route('admin.order.list') }}" class="pull-right">Back</a>
                </div>
                <div class="card-body">                    
                  @if(!empty($orders))
                    <table id="dtBasicExample" class="table" width="100%">
                      <thead>
                        <tr>
                          <th class="th-sm">No </th>
                          <th class="th-sm">Image</th>
                          <th class="th-sm">Product </th>
                          <th class="th-sm">Attach Image</th>
                          <th class="th-sm">Attach Text</th>
                          <th class="th-sm">Quantity </th>
                          <th class="th-sm">Price</th>
                          <th class="th-sm text-right">Total Price</th>
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
                              <td class="text-right"> {{ $ord['total_price'] }} </td>
                            </tr>
                        @endforeach
                        <tr>
                            <td colspan="7" class="text-right">Sub Total</td>
                            <td class="text-right">{{ $order->sub_total }}</td>
                        </tr>
                        <tr>
                            <td colspan="7" class="text-right">Delivery Charge</td>
                            <td class="text-right">{{ $order->dvy_charge }}</td>
                        </tr>
                        <tr>
                            <td colspan="7" class="text-right">Discount</td>
                            <td class="text-right">{{ $order->coupon_amount }}</td>
                        </tr>
                        <tr>
                            <td colspan="7" class="text-right">Total</td>
                            <td class="text-right">{{ $order->amount }}</td>
                        </tr>
                      </tbody>
                    </table>
                  @endif
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container">

  <!-- <tfoot>
    <tr>
      <th>Name
      </th>
      <th>Position
      </th>
      <th>Office
      </th>
      <th>Age
      </th>
      <th>Start date
      </th>
      <th>Salary
      </th>
    </tr>
  </tfoot> -->
  
</table>
<!-- Button trigger modal -->

<!-- Modal -->


<!-- MDBootstrap Datatables  -->
<link href="{{url('resources/css/datatables.min.css')}}" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- MDBootstrap Datatables  -->
<script type="text/javascript" src="{{url('resources/js/datatables.min.js')}}"></script>
<script>
    $(document).ready(function () {
  $('#dtBasicExample').DataTable();
  $('.dataTables_length').addClass('bs-select');
});
    </script>
</div>
@endsection
