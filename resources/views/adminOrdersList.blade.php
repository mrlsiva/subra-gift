@extends('layouts.appAdmin')

@section('content')
<div class="container-fliud">
    <div class=" justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">Orders List
                </div>
                <div class="card-body">                    
                  @if(!empty($orders))
                    <table id="dtBasicExample" class="table" width="100%">
                      <thead>
                        <tr>
                          <th class="th-sm">No</th>
                          <th class="th-sm">Name</th>
                          <!-- <th class="th-sm">Email</th> -->
                          <th class="th-sm">Phone</th>
                          <!-- <th class="th-sm">Address</th> -->
                          <th class="th-sm">Transaction ID</th>
                          <!-- <th class="th-sm">Coupon</th> -->
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
                              <td>{{$ord->firstname}}</td>
                              <!-- <td> {{$ord->email}} </td> -->
                              <td> {{$ord->phone}} </td>
                              <!-- <td> {{$ord->address}} </td> -->
                              <td> {{$ord->txn_id}} </td>
                              <!-- <td> {{$ord->coupon}} </td> -->
                              <td><span>&#8377;</span> {{$ord->amount}} </td>
                              <td> {{ formatOrderDate($ord->created_at) }} </td>
                              <td>
                                @if($ord->ship_status == 1)
                                  {{ trans('app.order_placed') }}
                                  @elseif($ord->ship_status == 2)
                                  {{ trans('app.packed') }}
                                  @elseif($ord->ship_status == 3)
                                  {{ trans('app.out_for_delivery') }}
                                  @elseif($ord->ship_status == 4)
                                  {{ trans('app.delivered') }}
                                  @endif
                              </td>
                              <td> 
                                <button type="button" class="btn btn-success admOrdDet" data-id="{{ $ord->id }}" title="Order Details"><i class="fa fa-eye" aria-hidden="true"></i></button>
                                {{--<a href="{{ route('admin.order.details', $ord->id) }}" class="btn btn-success mt-2" title="View"><i class="fa fa-eye" aria-hidden="true"></i></a>--}}
                              </td>
                            </tr>
                        @endforeach
                      </tbody>
                    </table>
                  @endif
                </div>
            </div>
        </div>
    </div>
</div>

@include('includes.adminOrderDetails')

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
  $('#dtBasicExample').DataTable({
    stateSave: true
  });
  $('.dataTables_length').addClass('bs-select');
});

$('#commentmodal').on('show.bs.modal', function(delBtn) {
    var button = $(delBtn.relatedTarget)
    var id = button.data('id') 
    // var type = button.data('type') 
    //var modal = $(this)
    //modal.find('form').attr("action", recipient)
    // do something when the modal is shown
    // $('#order_id').val(id);
    // $('#user_type').val(type);
});


$(".admOrdDet").on('click', function(e) {
  // console.log($(this).attr('data-id'));
  $.ajax({
      url:"{{url('admin/order-details')}}",
      type:"GET",
      data:{"order_id": $(this).attr('data-id')},
      dataType:'json',
      success:function(data)
      {
         // console.log(data); 
         if(data.status) {
            $('#ordDetModContent').html(data.html);
            $("#commentmodal").modal('show');
         }
      }
  })
});


$( "#ordDetModContent" ).delegate( ".mybutton", "click", function() {  
    var mystatus = $(this).val();
    var order_id = $("#order_id").val();

    $.ajaxSetup({
          headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          }
        });
    $.ajax({
        url:"{{url('admin/order-shipstatus')}}",
        type:"POST",
        data:{"order_id": order_id,"status":mystatus},
        dataType:'json',
        success:function(data)
        {
          if(data.status) {
            if(mystatus == 2)
            {
              alert("Order is packed!");
            } else if(mystatus == 3) {
              alert("Order is out for delivery!");
            } else if(mystatus == 4) {
              alert("Order is delivered!");
            }
            $('#order_id').val('');
            $('#ordDetModContent').html('');
            $("#commentmodal").modal('hide');
            location.reload();
          }
        }
    })
})
</script>
</div>
@endsection