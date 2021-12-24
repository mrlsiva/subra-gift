@extends('layouts.appAdmin')

@section('content')
<div class="container">
    <div class="row justify-content-center">
    @if(Session::has('updateBook'))
    <p class="alert {{ Session::get('alert-class', 'alert-success') }}">{!! Session::pull('updateBook') !!} </p>
    @endif
    @if(Session::has('itemDeleted'))
    <p class="alert {{ Session::get('alert-class', 'alert-success') }}">{!! Session::pull('itemDeleted') !!} </p>
    @endif
    @if(Session::has('sidetopimageAdded'))
    <p class="alert {{ Session::get('alert-class', 'alert-success') }}">{!! Session::pull('sidetopimageAdded') !!} </p>
    @endif
    <div class="col-md-12">
        @if(isset($selectedCategory))
            <div class="card">
                <div class="card-header">Side and Top Image Category
                @if(Session::has('booksByCategory') && !empty($selectedCategory))    
                => {{$selectedCategory->series_name}}
                @endif
                </div>

                <div class="card-body">
                   
                    <form action="{{route('admin.cat.sidetop')}}" method="POST" name="sidetop_cat" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group col-4">
                            <label >Side Image</label>
                            <input type="file" id="simage" name="simage" required>
                            @if(isset($selectedCategory->cat_side_img))
                            <img src="{{ url('storage/app/public/uploads/img/sidetop-img/'.$selectedCategory->cat_side_img) }}" class="img-responsive" />
                            @endif
                        </div>
                        <div class="form-group col-4">
                            <label for="book_category">Top Image</label>
                            <input type="file" id="timage" name="timage" required>
                            @if(isset($selectedCategory->cat_top_img))
                            <img src="{{ url('storage/app/public/uploads/img/sidetop-img/'.$selectedCategory->cat_top_img) }}" class="img-responsive" />
                            @endif
                        </div>
                        @if(!empty($selectedCategory))
                        <input type="hidden" id="category_sidetop_id" name="category_sidetop_id" value="{{$selectedCategory->id}}" />
                        @endif
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
            @endif
     </div>
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">View Products By Category
                @if(Session::has('booksByCategory') && !empty($selectedCategory))    
                => {{$selectedCategory->series_name}}
                @endif
                </div>

                <div class="card-body">
                   
                    <form action="{{route('admin.show.books')}}" method="POST" name="addbooks" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group col-6">
                            <label for="book_category">Choose category</label>
                            <select class="form-control" name="book_category">
                            @foreach($categories as $value)
                                <option value="{{$value->id}}">{{ ucwords($value->series_name) }}</option>
                            @endforeach    
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                    
                    @if(Session::has('booksByCategory') && !empty($selectedCategory))
                        <input type="hidden" id="category-id" value="{{$selectedCategory->id}}" />
                        <table>
                        @foreach($getBooksByCategory as $value)
                            <tr>
                            <td>{{ ucwords($value->book_title) }}</td>
                                <td>{{$value->sku}}</td> 
                                

                                <td> <img src="{{url('/storage/app/public/uploads/img/'.$selectedCategory->series_table_name.'/'.$value->thumb_img)}}" width="100" height="100"/> </td>

                                <td> <a href="{{url('read-book/'.$value->categories_id.'/'.$value->sku)}}"><i class="fa fa-eye" aria-hidden="true"></i></a></td>

                                <td>{{$value->actual_price}}</td> 
                                <td>{{$value->offer_price}}</td> 

                                <td><a href="{{url('/admin/edit-book/'.$value->id.'/'.$selectedCategory->series_table_name)}}" id="edit-{{$value->id}}">Edit</a> | <a href="{{url('/admin/delete-book/'.$value->id.'/'.$selectedCategory->series_table_name)}}" id="delete-{{$value->id}}">Delete</a></td>
                            </tr>
                        @endforeach 
                        </table>
                    
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
