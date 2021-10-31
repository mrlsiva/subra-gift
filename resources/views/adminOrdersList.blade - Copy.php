@extends('layouts.appAdmin')

@section('content')
<div class="container-fliud">
    <div class="row justify-content-center">
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
                              <td> {{$ord->amount}} </td>
                              <td> {{ formatOrderDate($ord->created_at) }} </td>
                              <td>
                                @php
                                $ship_status = ($ord->ship_status == 2)?'Out for delivery':(($ord->ship_status == 3)?'Delivered':'Open');
                                @endphp
                                {{ $ship_status }}
                              </td>
                              <td> 
                                <button type="button" class="btn btn-warning" data-id="{{ $ord->id }}" data-toggle="modal" data-target="#commentmodal" title="Change Status"><i class="fa fa-edit" aria-hidden="true"></i></button>

                                <a href="{{ route('admin.order.details', $ord->id) }}" class="btn btn-success mt-2" title="View"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
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

<!-- Modal -->
<div class="modal fade" id="commentmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <form  method="POST" name="create_comment_status" id="create_comment_status">
        @csrf
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Change Shipping Status</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
          <input type="hidden" name="order_id" id="order_id" value=""/>    
          <div class="col-md-12">
            <center>  
              <button type="button" class="btn btn-danger btn-secondary mybutton" name="button_status" id="btn_open" value="1">Open</button>
              <button type="button" class="btn btn-warning btn-secondary mybutton" name="button_status" id="btn_out" value="2">Out for delivery</button>
              <button type="button" class="btn btn-success btn-secondary mybutton" name="button_status" id="btn_delivered" value="3">Delivered</button>
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
            </center>
          </div> 
        </div> 
      </form>
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
    $('#order_id').val(id);
    // $('#user_type').val(type);
});

$(".mybutton").on('click', function() {
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
            if(mystatus == 1)
            {
              alert("Order is open!");
            } else if(mystatus == 2) {
              alert("Order is out for delivery!");
            } else if(mystatus == 3) {
              alert("Order is delivered!");
            }
            $('#order_id').val('');
            $("#commentmodal").modal('hide');
            location.reload();
          }
        }
    })
})
</script>
</div>
@endsection