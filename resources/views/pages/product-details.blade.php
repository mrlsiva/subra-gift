@extends('layouts.app')

@section('content')
<form method="POST" enctype="multipart/form-data" id="laravel-ajax-file-upload" >
   <div class="container product_details pt-3">
		<div class="card">
			<div class="container-fliud">
      <div class="row border-bottom-product">
            <nav aria-label="breadcrumb">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{{ url('/') }}">Home  </a></li>
                  <li class="breadcrumb-item" aria-current="page">  <a href="{{ url('/series/'.$series_image.'') }}">{{$series_name}}  </a> </li>
                  <li class="breadcrumb-item active" aria-current="page">{{$book_title}}</li>
               </ol>
            </nav>
         </div>
				<div class="wrapper row">
					<div class="preview col-md-5">
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-1">
                <img src="{{url('storage/app/public/uploads/img/'.$series_image.'/'.$thumb_img )}}" />
                
              </div>
						</div>
					</div>
       
					<div class="details col-md-7 mt-2">
            <input type="hidden" id="categoryId" value={{$category}} />
            <input type="hidden" id="bookId" value={{$book_id}} />
			      <h3 class="product-title" id="bookTitle">{{$book_title}}</h3>
						<div class="rating">
							<div class="stars">
								<span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
								<span class="fa fa-star-half-o"></span>
								<span class="fa fa-star-o"></span>
							</div>
              {{-- <span class="review-no">{{$review}} reviews | </span>
              <span class="review-no"><span class="fa fa-pencil"></span> Add reviews | </span>
              <span class="review-no">{{$review}} reviews</span> --}}
						</div>
                        
                        
                        <!-- <h4 class="price"> Price: <span class="offer_price"> ₹{{ $actual_price }}</span>  <span id="actualPrice"> ₹{{ $offer_price }}</span></h4>
                        
                        @foreach ($product_details as $value)
                              <div>{{ $value }}</div>
                              
                        @endforeach
                        <p class="product-description mt-2"><span class="green">✓ Paid Shipping</span> <span class="green">✓ 3-7 working days from date of Order</span> </p>

                        <div class="form-group">
        <label><span class="red_text">Upload Image * </span> </label>
        <div class="input-group">
            <span class="input-group-btn">
                <span class="btn btn-default btn-file">
                    Browse… <input type="file" id="imgInp">
                </span>
            </span>
            <input type="text" class="form-control mxw-200" readonly>
        </div>
        <img id='img-upload'/>
    </div>
    

                        <div class="action mt-3 col-12 p-0">
                            @auth
                            <button class="button e-series-book" id="addToCart"><span>Add to Cart </span></button>
                            @else
                            <a href="{{url('/login')}}"><button class="button e-series-book"><span>Login & Add to Cart </span></button></a>

                            @endauth
                           <a href="{{url('/cart/view')}}" style="display: none" id="viewCart"><button class="button e-series-book"><span>View Cart </span></button></a>
							
						</div>
					</div>
                </div>
                </div> -->
                <?php 
               // print_r($relatedProducts);
                ?>
                <h4 class="price"> Price:  <span class="">₹</span><span id="actualPrice">{{ $actual_price }}</span></h4>
                {{-- <span class="offer_price">₹</span> <span class="offer_price"> {{ $actual_price }}</span>  --}}
                <!-- <h4 class="price">Price:<span>₹</span> <span id="actualPrice">{{ $actual_price }}</span></h4> -->
                @foreach ($product_details as $value)
                              <div>{{ $value }}</div>
                              
                        @endforeach
                        <p class="product-description mt-2"><span class="green">✓ Paid Shipping</span> <span class="green">✓ 3-7 working days from date of Order</span> </p>
                        <input type="hidden" name="attach" value="{{ $attach }}" id="attach"/>
                        <input type="hidden" name="attach_mime" value="" id="attach_mime"/>
                        <div class="form-group mb-0 img_div">
        <label><span class="red_text">Upload Image * </span> </label>
        <div class="input-group">
            <span class="input-group-btn">
                <span id="browse" class="btn btn-default btn-file">
                    Browse… 
                    @if(Auth::check())
                      <input type="file" id="imgInp" name="imgInp">
                    @else
                      <input type="text" name="imgInp" id="imgInps" style="width:0px;padding:0; margin:0px;display:none;">
                    @endif
                </span>
            </span> 
          <br>
            <input type="text" class="form-control mxw-200" id="img_name" readonly >&nbsp;<label id="imgclear">Clear</label>
        </div>
        <img id='img-upload' class="mt-1"/>
    </div>
    <div class="form-group mb-0 txt_div" >
      <label><span class="red_text">Type Text to Print Product * </span> </label>
          @if(Auth::check())
            <input type="text" class="form-control" style="width:350px !important" id="text_product" name="text_product">
          @else
            <input type="text" class="form-control" style="width:350px !important" id="text_products" name="text_product">
          @endif


         {{--  <input type="text" name="attach_txt" value="" id="img-upload"  /> --}}
  </div>
  <input type="hidden" value="{{ $attach }}" id="attach_id" name="attach_id"/>
      <!-- <p class="vote"> <strong>SKU: </strong> <span id="sku">{{$sku}}</span> </p> -->
      <input type="hidden" value="{{ $sku }}" id="sku" name="sku"/>
                        <div class="action col-12 p-0">
                            @auth
                            <button type="submit" class="button e-series-book" id="addToCart"><span>Add to Cart </span></button>
                            @else
                            <a href="{{url('/login')}}" id="addToCartLogin"><button class="button e-series-book"><span>Login & Add to Cart </span></button></a>

                            @endauth
                           <a href="{{url('/cart/view')}}" style="display: none" id="viewCart"><span class="button e-series-book">View Cart </span></a>
							
						</div>
					</div>
    
                </div>
                </div>

<div class="row mt-4">
  <div class="container">
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
          <div class="tab-pane fade show active mt-4" id="one" role="tabpanel" aria-labelledby="one-tab">
            <!-- <p class="card-text">{{$description}}</p> -->
            <h4>Disclaimer:</h4>
<p>Delivered product might vary slightly from the image shown.</p>
<p>The date of delivery is provisional as it is shipped through third party courier partners.</p>
<p>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</p>
<p>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</p>
<p>Delivery may not be possible on Sundays and National Holidays.</p>
<p>For International deliveries, custom charges might be levied which are payable by the recipient.</p>
<p>Delivery timeline: 3-7 working days from date of Order.</p>
<p>Please contact support@ subragiftstudios.com for any queries.</p>
<p>Price is exclusive of GST.</p>
<p>Delivery Coverage & Charges Rs.60</p>
<p>Amount will not be refunded if the order is cancelled after the work on the design has started</p>
<p>COD is not available on any personalized product</p>
<p>No return or exchange applicable</p>

<h4>Delivery Information</h4>

<p>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</p>
<p>Your gift may be delivered prior or after the chosen date of delivery.</p>
<p>A courier product is delivered separately from other hand delivered products.</p>
<p>No deliveries are made on Sundays and National Holidays.</p>
<p>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</p>
<p>The delivery cannot be redirected to any other address.</p>
<p>All courier orders are carefully packed and shipped from our warehouse.</p>
<p>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</p>
<h4>We will consider the order executed in the below cases: </h4>
  <p>Delivery not done due to the wrong address.</p>
  <p>Recipient not available.</p>
  <p>Premises locked.</p>
  <p>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</p>
  <p>Recipient refused the products.</p>
  <p>Delivered the product at the Gate/ Reception/ Neighbour.</p>

          </div>
          <div class="tab-pane fade mt-4" id="two" role="tabpanel" aria-labelledby="two-tab">
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
                  {{-- <h6 class="mb-4"><span class="offer_price">₹ {{ $value->actual_price }}</span>  <span>₹ {{ $value->offer_price }}</span></h6> --}}
                  <h6 class="mb-4"> <span>₹ {{ $value->actual_price }}</span></h6>

                  
               </a>
@endforeach
</div> 

</div> 
   </div>
  </form>
  @if(!Auth::check())
    <script>
      $(document).ready( function() {
        // $("#imgInp").prop('disabled', true);
        $("#img_name").click(function(e){
          $('#browse').trigger('click');
        });
        $("#browse").click(function(e){
          e.stopPropagation();    
          e.preventDefault();
          if(confirm('You have to login to upload image!')) {
            window.location.href = "{{ url('login') }}";
          } else {
            
          }
        });

        $('#text_products').keypress(function(e) {
          if(confirm('You have to login to type text!')) {
            window.location.href = "{{ url('login') }}";
          } else {
            
          }
        });

        $('#addToCartLogin').click(function(e){
          window.location.href = "{{ url('login') }}";
        });
        
      });
    </script>
  @endif
  <script>
    $(document).ready( function() {
      
      $("#imgclear").hide();
          $(".img_div").hide();
          $(".txt_div").hide();
          var attach = $("#attach_id").val();
          if(attach == 1)
          {
            $(".img_div").show();
            $("#imgInp").prop('required',true);
          } else if(attach == 2)
          {
            $(".txt_div").show();
            $("#text_product").prop('required',true);
          }
          else if(attach == 3)
          {
            $(".img_div").hide();
            $(".txt_div").hide();
          }
          else if(attach == 4)
          {
            $(".img_div").show();
            $("#imgInp").prop('required',true);
            $(".txt_div").show();
            $("#text_product").prop('required',true);
          }
          $(document).on('change', '#imgInp', function() {
            $("#imgclear").show();
        });
          $(document).on('click', '#imgclear', function() {
            $("#imgInp").val(null);
            $("#img_name").val(null);
            //$("#img-upload").attr(null);
            var $image = $('#img-upload');
            $image.removeAttr('src').replaceWith($image.clone());
            
        });
          $(document).on('change', '.btn-file :file', function() {
        var input = $(this),
          label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
        input.trigger('fileselect', [label]);
        });
  
        $('.btn-file :file').on('fileselect', function(event, label) {
            
            var input = $(this).parents('.input-group').find(':text'),
                log = label;
            
            if( input.length ) {
                input.val(log);
            } else {
                if( log ) alert(log);
            }
          
        });
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                
                reader.onload = function (e) {
                    $('#img-upload').attr('src', e.target.result);
                }
                // console.log("Mime Type " +input.files[0].type);
                $('#attach_mime').val(input.files[0].type);
                reader.readAsDataURL(input.files[0]);
            }
        }
  
        $("#imgInp").change(function(){
            readURL(this);
        }); 	
      });
  </script>
<script type="text/javascript"> 
  $(document).ready( function() {
        $(document).on('change', '.btn-file :file', function() {
      var input = $(this),
        label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
      input.trigger('fileselect', [label]);
      });

      $('.btn-file :file').on('fileselect', function(event, label) {
          
          var input = $(this).parents('.input-group').find(':text'),
              log = label;
          
          if( input.length ) {
              input.val(log);
          } else {
              if( log ) alert(log);
          }
        
      });
      function readURL(input) {
          if (input.files && input.files[0]) {
              var reader = new FileReader();
              
              reader.onload = function (e) {
                  $('#img-upload').attr('src', e.target.result);
              }
              // console.log("Mime Type " +input.files[0].type);
              $('#attach_mime').val(input.files[0].type);
              reader.readAsDataURL(input.files[0]);
          }
      }

      $("#imgInp").change(function(){
          readURL(this);
      }); 	
    });

    //$('#addToCart').on('click',function(){
      $('#laravel-ajax-file-upload').submit(function(e) {
        e.preventDefault();
      var attach = $("#attach_id").val();
      var img_value = $("#img_name").val();
      var text_product = $("#text_product").val();
        if(attach == 1)
        {
         if(img_value == '')
         {
            alert("Add Image to Process");
            return false;
         }
        } else if(attach == 2)
        {
            if(text_product == '')
          {
              alert("Add Text to Process");
              return false;
          }
        }
        else if(attach == 3)
        {
          
        }
        else if(attach == 4)
        {
            if(img_value == '')
          {
              alert("Add Image to Process");
              return false;
          }
            if(text_product == '')
          {
              alert("Add Text to Process");
              return false;
          }
        }
        var attach_val = '';
        if(attach == 1) {
          attach_val = $('#img-upload').prop('src');
        } else {
          attach_val = $('#img-upload').val();
        }
        // alert("Ready")
        var base_url = "{{url('/')}}";
        var headers = $('meta[name="csrf-token"]').attr('content');
        
        var formData = new FormData(this);
        formData.append(
           'book_id',$('#bookId').val()
       );
       formData.append(
           'category_id',$('#categoryId').val()
       );
       formData.append(
           'sku',$('#sku').val()
       );
       formData.append(
           'book_title',$('#bookTitle').text()
       );
       formData.append(
           'qty', 1
       );
       formData.append(
           'amount',$('#actualPrice').text()
       );
       formData.append(
           'attach',$('#attach_id').val()
       );
       formData.append(
           'attach_val', attach_val
       );
       formData.append(
           'attach_mime', $('#attach_mime').val()
       );
       formData.append(
           'text_product',$('#text_product').val()
       );

        $.ajax({
            type: "POST",
            headers: {'X-CSRF-TOKEN': headers},
            data: formData,
            url: base_url+"/add-to-cart",
            cache:false,
            contentType: false,
            processData: false,
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