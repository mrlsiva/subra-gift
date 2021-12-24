@extends('layouts.appAdmin')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">@isset($coupon) Edit @else Add  @endisset Coupon Code</div>
                <div class="card-body">
                    @if(Session::has('message'))
                    <p class="alert {{ Session::get('alert-class', 'alert-success') }}">{!! Session::pull('message') !!} </p>
                    @endif
                    @if($errors->any())
                        <div class="alert alert-danger" role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>

                            @foreach($errors->all() as $error)
                                {{ $error }}<br/>
                            @endforeach
                        </div>
                    @endif

                    <form @isset($coupon) action="{{route('admin.coupon.update',$coupon->id)}}" @else action="{{route('admin.coupon.store')}}" @endif method="POST" name="addbooks" enctype="multipart/form-data">


                        @csrf
                        <div class="form-group">
                            <label for="coupon">Coupon Code</label>
                            <input type="text" name="coupon" id="coupon" value="{{ (isset($coupon)?$coupon->coupon:old('coupon')) }}" required />
                        </div>

                        <div class="form-group">
                            <label for="title">Title</label>
                            <input type="text" name="title" id="title" value="{{ (isset($coupon)?$coupon->coupon_title:old('title')) }}" required maxlength="150" />
                        </div>

                        <div class="form-group">
                            <label for="description">Description</label>
                            <textarea name="description" id="description" rows='3' cols='20' required maxlength="255">{{ (isset($coupon)?$coupon->coupon_desc:old('description')) }}</textarea>
                        </div>

                        <div class="form-group">
                            <label for="coupon_type">Discount Type</label>
                            <select name="coupon_type" id="coupon_type" required>
                                <option value="">Select Coupon Type</option>
                                <option value="1" {{ ((isset($coupon)?$coupon->coupon_type:old('coupon_type')) == 1)?'selected':'' }}>Percent</option>
                                <option value="2" {{ ((isset($coupon)?$coupon->coupon_type:old('coupon_type')) == 2)?'selected':'' }}>Flat</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="coupon_value">Coupon Value</label>
                            <input type="number" name="coupon_value" id="coupon_value" value="{{ (isset($coupon)?$coupon->coupon_value:old('coupon_value')) }}" required />
                        </div>

                        <div class="form-group">
                            <label for="coupon_valid_date">Valid Date</label>
                            <input type="date" name="coupon_valid_date" id="coupon_valid_date" value="{{ (isset($coupon)?$coupon->coupon_valid_date:old('coupon_valid_date')) }}" required />
                        </div>

                        <a href="{{ route('admin.coupon.list') }}" class="btn btn-danger">Cancel</a>
                        <button type="submit" class="btn btn-primary">@isset($coupon) Update @else Submit @endif</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection