<div class="row text-center">
    <input type="hidden" name="order_id" id="order_id" value="{{ $order->id }}"/> 
    <div class="col-md-12">
        <button type="button" class="btn btn-danger btn-secondary mybutton" name="button_status" id="btn_open" value="2">{{ trans('app.packed') }}</button>
        <button type="button" class="btn btn-warning btn-secondary mybutton" name="button_status" id="btn_out" value="3">{{ trans('app.out_for_delivery') }}</button>
        <button type="button" class="btn btn-success btn-secondary mybutton" name="button_status" id="btn_delivered" value="4">{{ trans('app.delivered') }}</button>
    </div>
</div>

<div class="row">
    <div class="col-md-2">
        <img src="" style="width: 100%; height: auto;">
    </div>

    <div class="col-md-10 text-left">  
        <div class="row">
            <div class="col-md-5"> Name </div>
            <div class="col-md-1"> : </div>
            <div class="col-md-4">{{ $order->firstname }}</div>
        </div>
        <div class="row">
            <div class="col-md-5"> Phone </div>
            <div class="col-md-1"> : </div>
            <div class="col-md-4">{{ $order->phone }} </div>
        </div>
        <div class="row">
            <div class="col-md-5"> Email </div>
            <div class="col-md-1"> : </div>
            <div class="col-md-4">{{ $order->email }} </div>
        </div>
        <div class="row">
            <div class="col-md-5"> Address </div>
            <div class="col-md-1"> : </div>
            <div class="col-md-4">{{ $order->address }} </div>
        </div>

        <div class="row">
            <div class="col-md-5"> Transaction ID </div>
            <div class="col-md-1"> : </div>
            <div class="col-md-4">{{ $order->txn_id }} </div>
        </div>

        <div class="row">
            <div class="col-md-5"> Transaction Details </div>
            <div class="col-md-1"> : </div>
            <div class="col-md-4">{{ $order->txn_details }} </div>
        </div> 

        <div class="row">
            <div class="col-md-5"> Ordered Date </div>
            <div class="col-md-1"> : </div>
            <div class="col-md-4">{{ date('d-m-Y H:i', strtotime($order->created_at) ) }}</div>
        </div>        

        <div class="row">
            <div class="col-md-5"> Subtotal Amount </div>
            <div class="col-md-1"> : </div>
            <div class="col-md-4"><span>&#8377;</span>{{ $order->sub_total }} </div>
        </div>

        <div class="row">
            <div class="col-md-5"> Delivery Charge </div>
            <div class="col-md-1"> : </div>
            <div class="col-md-4"><span>&#8377;</span>{{ $order->dvy_charge }} </div>
        </div>

        <div class="row">
            <div class="col-md-5"> Coupon Amount</div>
            <div class="col-md-1"> : </div>
            <div class="col-md-4"><span>&#8377;</span>{{ $order->coupon_amount }} @if($order->coupon != '') {{ $order->coupon }} @endif</div>
        </div>

        <div class="row">
            <div class="col-md-5"> Total Amount </div>
            <div class="col-md-1"> : </div>
            <div class="col-md-4"><strong><span>&#8377;</span><span id="product_totalprice">{{ $order->amount }}</span></strong> </div>
        </div>

        <div class="row">
            <div class="col-md-5"> Status</div>
            <div class="col-md-1"> : </div>
            <div class="col-md-4">
                @if($order->ship_status == 1)
                {{ trans('app.order_placed') }}
                @elseif($order->ship_status == 2)
                {{ trans('app.packed') }}
                @elseif($order->ship_status == 3)
                {{ trans('app.out_for_delivery') }}
                @elseif($order->ship_status == 4)
                {{ trans('app.delivered') }}
                @endif
            </div>
        </div>

    </div>
</div>
<div class="">
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
                  <td class="text-right"> <span>&#8377;</span>{{ $ord['total_price'] }} </td>
                </tr>
            @endforeach
            <tr>
                <td colspan="7" class="text-right">Sub Total</td>
                <td class="text-right"><span>&#8377;</span>{{ $order->sub_total }}</td>
            </tr>
            <tr>
                <td colspan="7" class="text-right">Delivery Charge</td>
                <td class="text-right"><span>&#8377;</span>{{ $order->dvy_charge }}</td>
            </tr>
            <tr>
                <td colspan="7" class="text-right">Discount</td>
                <td class="text-right"><span>&#8377;</span>{{ $order->coupon_amount }}</td>
            </tr>
            <tr>
                <td colspan="7" class="text-right">Total</td>
                <td class="text-right"><span>&#8377;</span>{{ $order->amount }}</td>
            </tr>
          </tbody>
        </table>
      @endif
</div>