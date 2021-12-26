@extends('layouts.appAdmin')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Add products</div>

                <div class="card-body">
                    @if(Session::has('dashboardImage'))
                    <p class="alert {{ Session::get('alert-class', 'alert-success') }}">{!! Session::pull('dashboardImage') !!} </p>
                    @endif
                        <div class="form-group">
                            <a href="#" data-toggle="modal" data-target="#exampleModal">+ Add Dashboard Image</a>
                        </div>
                        <table>
                            <th>Image</th>
                            <th>Link</th>
                            <th>Alt Name</th>
                            <th>Action</th>
                        @foreach($getdashobardImage as $value)
                            <tr>
                                <td> <img src="{{url('/storage/app/public/uploads/img/dashboardimage'.'/'.$value->di_image)}}" width="100" height="100"/> </td>
                                <td>{{$value->di_link}}</td> 
                                <td>{{$value->di_name}}</td> 
                                <td><a href="{{url('/admin/delete-dashboardimage/'.$value->di_id)}}" id="delete-{{$value->di_id}}">Delete</a></td>
                            </tr>
                        @endforeach 
                        </table>
                    
                 


                    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                            <form action="{{route('admin.dashboardpost.image')}}" method="POST" name="addImage" enctype="multipart/form-data">
                            @csrf
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Add Dashboard Image</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label for="cat_name">Image Link</label>
                                    <input type="text" name="dashboard_link" id="dashboard_link" required/>
                                </div>
                                <div class="form-group">
                                    <label for="cat_name">Alt name</label>
                                    <input type="text" name="dashboard_name" id="dashboard_name" required/>
                                </div>
                                <div class="form-group">
                                    <label for="cat_banner">Image</label>
                                    <input type="file" name="dashboard_image" id="dashboard_image" required/>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary">Add new image</button>
                            </div>
                            </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
