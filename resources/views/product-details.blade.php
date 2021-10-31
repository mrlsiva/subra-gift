@extends('layouts.app')

@section('content')
   <div class="container product_details pt-3">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-5">
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-1">
                <img src="{{url('storage/app/public/uploads/img/'.$series_image.'/'.$thumb_img )}}" />
                
              </div>
						</div>
					</div>
					<div class="details col-md-7">
               <input type="hidden" id="categoryId" value={{$category}} />
               <input type="hidden" id="bookId" value={{$book_id}} />
						<h3 class="product-title" id="bookTitle">{{$book_title}}</h3>
						<!-- <div class="rating">
							<div class="stars">
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star"></span>
								<span class="fa fa-star"></span>
							</div>
							<span class="review-no">{{$review}} reviews</span>
						</div> -->
                        
                        
                        <h4 class="price">Price:<span>₹</span> <span id="actualPrice">{{ $actual_price }}</span></h4>
                        <!-- <p class="product-description"> -->
                        @foreach ($product_details as $value)
                              <div>{{ $value }}</div>
                        @endforeach
                        <p class="vote"> <strong>Stock: </strong> {{$in_stock}} </p>
                       
                        <p class="vote"> <strong>SKU: </strong> <span id="sku">{{$sku}}</span> </p>
						<div class="action mt-3 col-12 p-0">
                            <!-- <button class="add-to-cart btn btn-default" type="button">Add to cart</button> -->
                            @auth
                            <button class="button e-series-book" id="addToCart"><span>Add to Cart </span></button>
                            @else
                            <a href="{{url('/login')}}"><button class="button e-series-book"><span>Login & Add to Cart </span></button></a>

                            @endauth
                           <a href="{{url('/cart/view')}}" style="display: none" id="viewCart"><button class="button e-series-book"><span>View Cart </span></button></a>
							
						</div>
					</div>
                </div>
                </div>

<div class="row mt-4">
  <div class="container p-0">
    <div class="col-12 p-0">
      <div class=" mt-3 tab-card">
        <div class="card-header tab-card-header">
          <ul class="nav nav-tabs card-header-tabs" id="myTab" role="tablist">
            <li class="nav-item">
                <a class="nav-link" id="one-tab" data-toggle="tab" href="#one" role="tab" aria-controls="One" aria-selected="true">Description</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="two-tab" data-toggle="tab" href="#two" role="tab" aria-controls="Two" aria-selected="false">Additional Info</a>
            </li>

          </ul>
        </div>

        <div class="tab-content" id="myTabContent">
          <div class="tab-pane fade show active p-3" id="one" role="tabpanel" aria-labelledby="one-tab">
            <p class="card-text">{{$description}}</p>
          </div>
          <div class="tab-pane fade p-3" id="two" role="tabpanel" aria-labelledby="two-tab">
          <p class="card-text">{{$additional_info}}</p>           
          </div>
         

        </div>
      </div>
    </div>
  </div>

   </div>
                </div>


                <div class="row mt-4">
   <div class="container abtus">
   <h2 class="mb-2 mt-2"> Related products</h2>
<div class="row mt-4 e-series">
@foreach ($relatedProducts as $value)
<a href="{{ url('/product/'.$series_id.'/'.$value->sku) }}" class="col-6 col-sm-4 col-md-4 col-lg-3 col-xl-3  hover-effect container-hover">
               <div class="white-bg">
                  <img src="{{ url('storage/app/public/uploads/img/'.$series_image.'/'. $value->thumb_img) }}" class="img-responsive image white-bg-img" />
                  </div>
                  <h6 class="mb-2 mt-2 show_one_line">  {{$value->book_title}} </h6>
                  {{-- <h6 class="mb-4"><span class="offer_price">₹ {{ $value->offer_price }}</span>  <span>₹ {{ $value->actual_price }}</span></h6> --}}
                  <h6 class="mb-4"> <span>₹ {{ $value->actual_price }}</span></h6>

                  
               </a>
@endforeach
</div> 

</div> 
   </div>

<script type="text/javascript">   
    $('#addToCart').on('click',function(){
        // alert("Ready")
        var base_url = "{{url('/')}}";
        var headers = $('meta[name="csrf-token"]').attr('content');
        var requestData = {
           'book_id': $('#bookId').val(),
           'category_id': $('#categoryId').val(),
           'sku': $('#sku').text(),
           'book_title': $('#bookTitle').text(),
           'qty': 1,
           'amount': $('#actualPrice').text()
        }
        $.ajax({
            type: "POST",
            headers: {'X-CSRF-TOKEN': headers},
            data: requestData,
            url: base_url+"/add-to-cart",
            success: function(msg){
                console.log('msg: ', msg);
                $('#totalQty').text(msg.qty);
                $("#totalAmount").text(parseFloat(msg.totalAmount).toFixed(2));
                $('#viewCart').show();
            }
        });
    })
</script>
@endsection