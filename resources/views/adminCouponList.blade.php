@extends('layouts.appAdmin')



@section('content')

<div class="container">

    <div class="row justify-content-center">

        

        <div class="col-md-12">

            @if(Session::has('success'))

                <p class="alert {{ Session::get('alert-class', 'alert-success') }}">{!! Session::pull('success') !!} </p>

            @endif

            <div class="card">

                <div class="card-header">Coupons List <a href="{{ url('admin/coupon-create') }}" class="pull-right btn btn-md btn-primary">Add Coupon</a></div>

                <div class="card-body">

                    <table>
                        <thead>
                            <tr>
                              <th class="th-sm">No</th>
                              <th class="th-sm">Coupon</th>
                              <th class="th-sm">Title</th>
                              <th class="th-sm">Type</th>
                              <th class="th-sm">Value</th>
                              <th class="th-sm">Valid Date</th>
                              <th class="th-sm">Status</th>
                              <th class="th-sm">Action</th>
                            </tr>
                        </thead>

                        @php $i = 0; @endphp

                        @foreach($coupons as $cou)

                            <tr> 
                                <td>{{ ++$i }}</td> 
                                <td>{{ $cou->coupon }}</td>
                                <td>{{ $cou->coupon_title }}</td>
                                <td>@if($cou->coupon_type==1) Percent @elseif($cou->coupon_type==2) Flat @endif</td>
                                <td>{{ $cou->coupon_value }}</td>
                                <td>@if($cou->coupon_valid_date) {{ formatDate($cou->coupon_valid_date) }} @else - @endif </td>
                                <td>{{ ($cou->coupon_status == 1?'Active':'Inactive') }}</td>
                                <td>
                                    <a href="{{url('/admin/coupon-edit/'.$cou->id)}}" id="edit-{{$cou->id}}" title='Edit'><i class="fa fa-edit" aria-hidden="true"></i></a>
                                    <a href="{{url('/admin/coupon-delete/'.$cou->id)}}" id="delete-{{$cou->id}}" title="Delete"><i class="fa fa-trash" aria-hidden="true"></i></a>
                                </td>
                            </tr>

                        @endforeach 

                    </table>

                </div>

            </div>

        </div>

    </div>

</div>

@endsection