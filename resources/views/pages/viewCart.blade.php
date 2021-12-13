@extends('layouts.app')

@section('content')
<div class="container pt-3">
    <div class="row mt-3 mb-0">
        <nav aria-label="breadcrumb">
           <ol class="breadcrumb">
           <li class="breadcrumb-item"><a href="{{ url('/') }}">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Cart</li>
           </ol>
        </nav>
     </div>
    @if(count($cartItems) > 0)
    <div class="row mb-5 hidefulldiv">
        <div class="col-sm-12 col-md-9 col-12" id="reloadid">
            <form method="post" action="{{route('subscribe-process')}}">
                @csrf
                <input type="hidden" id="cart-id" value="" />
                <table class="table table-hover" id="cart-table">
                    @php $array=[]; $sku = [];$id = []; $last = array_key_last($cartItems); @endphp
                    <thead>
                        <tr>
                        <th scope="col-4">Product</th>
                        <th scope="col-2">Product Name</th>
                        <th scope="col-2">Quantity</th>
                        <th scope="col-2">Price</th>
                        <th scope="col-2">Total</th>
                        <th scope="col-1"></th>
                        <th scope="col-1"></th>
                        </tr>
                    </thead>
                    <tbody>
                    @foreach ($cartItems as $k=>$value)
                    <div class="alert alert-warning" id='redo-box' role="alert" style="display: none">
                    <span>You wanna <a href="javascript:void(0)" id="redo-delete" data-id="{{$value['id']}}">redo</a>?</span>
                    </div>
                    <tr >
                        <td scope="row"><img src="{{$value['image']}}" style="width: 72px; height: 72px; border: 1px solid #d0d0d0; padding: 5px;"></td>
                        <td>{{$value['book_title']}}</td>
                        <td>
                            <span>
                            <button type="button" class="btn btn-icon rounded-circle btnMinus" attr="{{$k}}" single_price="{{$value['amount']}}" product_id="{{$value['id']}}"><i data-feather="minus"></i>-</button>
                            <input type="text" readonly class="form-control" style="width:50px;" value="{{$value['qty']}}"  id="num_qty<?php echo $k?>" name="num_qty" />
                            <button type="button" class="btn btn-icon rounded-circle btnPlus" attr="{{$k}}" single_price="{{$value['amount']}}" product_id="{{$value['id']}}"><i data-feather="plus"></i>+</button>
                            </span>
                        </td>
                        <td><strong><input type="text" readonly class="form-control" style="width:80px;" value="{{$value['amount']}}"  id="qty_amt<?php echo $k?>" name="qty_amt[]" /></strong> </td>
                       
                        <td> <input type="text" readonly class="form-control" style="width:80px;" value="{{$value['curr_total']}}"  id="qty_total_amt<?php echo $k?>" name="qty_total_amt[]" /></strong></td>
                        <td>
                        <a data-toggle="modal" data-targetw="#exampleModalCenter" class="clear_modals show_modal" product_name="{{$value['book_title']}}" product_qty="{{$value['qty']}}" product_price="{{$value['amount']}}" product_totalprice = "{{$value['curr_total']}}"  product_text="{{$value['product_text']}}" product_image="{{$value['product_image']}}" style="color: #da3340;"><i class="fa fa-eye" aria-hidden="true"></i></a>

                        <!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter"> Launch demo modal </button> -->
                        </td>
                        <td> <a href="javascript:void(0)" class='delete-cart' product_id="{{$value['id']}}" attr1="{{$k}}" data-attr="{{$value['id']}}" style="color: #da3340;"><i class="fa fa-trash-o" aria-hidden="true"></i></a> </td>

     
                    </tr>
                    @php
                    $sku[]= $value['sku'];
                    $id[]= $value['id'];

                    @endphp
                    @endforeach
                    @php
                    $array=array(
                        'sku'=>$sku,
                        'id'=>$id
                        );

                    @endphp
                    </tbody>
                </table>
            <!-- </form> -->
        </div>
        <div class="col-sm-12 col-md-3 col-12 order-summary" style="background-color: #f7f7f7;">
            
            <div class="row">
                <div class="col-12" style="display:none">
                    <h5>Subtotal</h5>
                    <h5><strong><span>&#8377;</span><span class="amount">{{$total}}</span></strong></h5>
                    <input type="text" id="amount"  name="amount" value="{{ ($total + 60) }}">
                    <input type="hidden" id="sku" name="sku" value="{{json_encode($array,true)}}">
                    <input type="hidden" id="type" name="type" value="1">
                </div>
                
                <div class="col-12 pt-2">
                    <h5 class="sum">Summary</h5>
                </div>
                <div class="col-12 pt-3">
                    <h6 class="mb-4" style="width:70%; display: inline-block; float:left">Purchase Total  </h6>
                    <h6 style="width:30%; display: inline-block; float:left; text-align:right"> <strong><span>&#8377;</span><span class="amount" id="purchase_total">{{$total}}</span></strong></h6>
                </div>
                <div class="col-12">
                    <h6 style="width:70%; display: inline-block; float:left">Delivery Charges  </h6>
                    <h6 style="width:30%; display: inline-block; float:left; text-align:right"> <strong><span>&#8377;</span><span class="amount" id="delivery_charge">60</span></strong></h6>
                </div>
               
                <div class="col-12 pt-3">
                    <h6 class="pt-3 cpncde">Coupon Code </h6>
                </div>
                <div class="col-12 div ">
                    <input type="text" id="mycoupon" class="ppfix post trash"  name="mycoupon" value="" style="" placeholder="">
                    <button type="button" class="postfix trash" id="apply_coupon"> Apply </button>
                    <div class="alert-success-code" id="jsCouponSuccess" style="display:none;"> coupon code applied successfully!</div>
                    <div class="alert-fail-code" id="jsCouponFailure" style="display:none;">This coupon code is invalid or has expired.</div>
                    {{-- <div class="alert-success-code"> coupon code applied <strong>successfully!</strong> 
                    </div> --}}
                    {{-- <div class="alert-fail-code">This coupon code is invalid or has expired.</div> --}}
                        <style>
                            /* .div {
                                display: inline-block;
                                width: 230px;
                                margin: 1em;
                            } */
                            .cn-btn {
                                background-color: #da3340 !important;
                                color: #fff!important;
                                padding: 10px 20px !important;
                                border: 1px solid #da3340 !important;
                            }
                            .ppfix {
                                margin: 0;
                                vertical-align: top;
                                display: inline-block;
                                font-family: "Pontano Sans";
                                font-size: 13px;
                                color: #343434;
                                min-width: 150px;
                                height: 30px;
                                background: #fbfbfb;
                                border: 1px solid #cccdcf;
                                padding: 10px;
                                box-shadow: inset 0 2px 3px #e8e8e8;
                            }
                            .ppfix:focus {
                                outline: none;
                            }
                            .prefix, .postfix {
                                font-family: FontAwesome;
                                line-height: 1.5em;
                                font-size: 16px;
                                color: #737373;
                            }
                            /* span.prefix.trash:before, span.postfix.trash:before {
                                content: "\f014";
                            } */
                            .post {
                                border-top-left-radius: 2px;
                                border-bottom-left-radius: 2px;
                                -moz-border-radius-topleft: 2px;
                                -moz-border-radius-bottomleft: 2px;
                                -webkit-border-top-left-radius: 2px;
                                -webkit-border-bottom-left-radius: 2px;
                            }
                            .postfix {
                                vertical-align: middle;
                                display: inline-block;
                                width: 60px;
                                font-size: 13px;
                                text-align: center;
                                height: 30px;
                                padding: 3px;
                                background: #da3340;
                                border: 1px solid #da3340;
                                border-left: 0;
                                color: #fff;
                                margin-left: -4px;
                                border-top-right-radius: 2px;
                                border-bottom-right-radius: 2px;
                                -moz-border-radius-topright: 2px;
                                -moz-border-radius-bottomright: 2px;
                                -webkit-border-top-right-radius: 2px;
                                -webkit-border-bottom-right-radius: 2px;
                            }
                            .postfix  i {
                                margin-left: 6px;
                                 margin-top: 6px;
                            }
                            .alert-success-code {
                                color: green;
                                font-size: 12px;
                                margin-top: 6px;
                            }
                            .alert-fail-code {
                                color: red;
                                font-size: 12px;
                                margin-top: 6px;
                            }
                        </style>
                </div>
                <br>
                <div class="col-12 mt-2">
                    <h6 style="width:70%; display: inline-block; float:left">Coupon Discount  </h6>
                    <h6 style="width:30%; display: inline-block; float:left; text-align:right"> <strong><span>&#8377;</span><span class="amounts" id="coupon_discountcharge">0</span></strong></h6>
                    <input type="hidden" name="coupon_amount" id="coupon_amount" value="0.00">
                </div>
                <div class="col-12 pt-3">
                    <h6 style="width:70%; display: inline-block; float:left">Total </h6>
                    <h5 style="width:30%; display: inline-block; float:left; text-align:right"> <strong><span>&#8377;</span><span class="amount" id="final_amt"></span></strong></h5>
                </div>
                <div class="col-12 pt-3 mb-3">
                    <button type="submit" id="checkout_submit" class="btn e-series-book cn-btn">
                        Continue
                    </button>
                </div>
            </div>
        </div>
        
        </form>
        <!-- Popup -->
        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Product Summary</h5>
                    <button type="button" class="close" data-dismiss="modal" classw="clear_modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-3"><img src="{{$value['image']}}" style="width: 100%; height: auto;  padding: 5px;"> </div>
                            <div class="col-md-9 text-left" style="line-height:28px">  
                                <div class="row">
                                    <div class="col-md-5 col"> Product Name </div>
                                    <div class="col-md-1 col-1"> : </div>
                                    <div class="col-md-4 col" id="product_name"></div>
                                </div>
                                <div class="row">
                                    <div class="col-md-5 col"> Product Quantity </div>
                                    <div class="col-md-1 col-1"> : </div>
                                    <div class="col-md-4 col" id="product_qty"> </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-5 col"> Product Price </div>
                                    <div class="col-md-1 col-1"> : </div>
                                    <div class="col-md-4 col"><strong ><span>&#8377;</span><span id="product_price"></span></strong>   </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-5 col"> Total Price </div>
                                    <div class="col-md-1 col-1"> : </div>
                                    <div class="col-md-4 col"><strong><span>&#8377;</span><span id="product_totalprice"></span></strong> </div>
                                </div>
                            </div>
                        </div>
                        <div class="row text-center"  style="border-top:1px solid #ccc">
                        <h5 class="mt-3" style="width: 100%; margin:0 auto;  padding: 5px;">Your given Information</h5>
                        <!-- <img src="{{$value['image']}}" style="width: 30%; height: auto; margin:0 auto;  padding: 5px;"> -->
                        <img id="pro_img" src="" style="width: 30%; height: auto; margin:0 auto;  padding: 5px;">

                        
                        <!-- or -->
                        <h5 class="mt-3" style="width: 100%; margin:0 auto;  padding: 5px;" id="show_text_product"> We have write "<strong id="pro_txt"></strong>" this text on {{$value['book_title']}} </h5>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <!-- <button type="button" href="javascript:void(0)" data-dismiss="modal" class='btn e-series-book cn-btn' data-attrw="{{$value['id']}}">Close</button> -->
                </div>
            </div>
        </div>
    </div>

    @endif
</div>
<div class="row offer-section my-2 py-3">
    <div class="col-12"> <h4>Available Offers</h4> </div>
    <div class="col-sm-4 col-md-4 col-12 my-2  ">
        <div class="offer-box p-2">
            <div class="offer-title mb-2">Flat 100 Offer</div>
            <div class="Offer-desc mb-1">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum
                has been the industry's standard dummy text ever since the 1500s, </div>
            <div class="offer-validate mb-1"> Valid till 30th Feb</div>
            <div class="container">
                <div class="row">
                    <div class="col-6 col-sm-6 col-md-6 p-0 offer-copy text-center"><a>FLAT100</a></div>
                    <div class="col-6 col-sm-6 col-md-6 copy-code"> <a> <i class="fa fa-clone mr-2" aria-hidden="true"></i>Copy
                            Coupon</a></div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-4 col-md-4 col-12 my-2  ">
        <div class="offer-box p-2">
            <div class="offer-title mb-2">Flat 100 Offer</div>
            <div class="Offer-desc mb-1">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum
                has been the industry's standard dummy text ever since the 1500s, </div>
            <div class="offer-validate mb-1"> Valid till 30th Feb</div>
            <div class="container">
                <div class="row">
                    <div class="col-6 col-sm-6 col-md-6 p-0 offer-copy text-center"><a>FLAT100</a></div>
                    <div class="col-6 col-sm-6 col-md-6 copy-code copied"> <a> Code Copied!</a></div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-4 col-md-4 col-12 my-2  ">
        <div class="offer-box p-2">
            <div class="offer-title mb-2">Flat 100 Offer</div>
            <div class="Offer-desc mb-1">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum
                has been the industry's standard dummy text ever since the 1500s, </div>
            <div class="offer-validate mb-1"> Valid till 30th Feb</div>
            <div class="container">
                <div class="row">
                    <div class="col-6 col-sm-6 col-md-6 p-0 offer-copy text-center"><a>FLAT100</a></div>
                    <div class="col-6 col-sm-6 col-md-6 copy-code"> <a> <i class="fa fa-clone mr-2" aria-hidden="true"></i>Copy
                            Coupon</a></div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-4 col-md-4 col-12 my-2  ">
        <div class="offer-box p-2">
            <div class="offer-title mb-2">Flat 100 Offer</div>
            <div class="Offer-desc mb-1">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum
                has been the industry's standard dummy text ever since the 1500s, </div>
            <div class="offer-validate mb-1"> Valid till 30th Feb</div>
            <div class="container">
                <div class="row">
                    <div class="col-6 col-sm-6 col-md-6 p-0 offer-copy text-center"><a>FLAT100</a></div>
                    <div class="col-6 col-sm-6 col-md-6 copy-code"> <a> <i class="fa fa-clone mr-2" aria-hidden="true"></i>Copy
                            Coupon</a></div>
                </div>
            </div>
        </div>
    </div>
    
</div>
    <div class="row mb-5 showmsgdiv">
        <div class="col-sm-12 col-md-9 col-12 p-0"> 
                <label>Please Shop to continue</label><a href="{{ url('/') }}">Shop</a>
        </div>
    </div>
   

<script type="text/javascript">
$(document).ready(function(){
    $(".showmsgdiv").hide();
    var ftotal = 0;
        $('input[name="qty_total_amt[]"]').each(function(){
            var myval = parseInt($(this).val());
            ftotal = ftotal + myval
        });
        $("#purchase_total").html(ftotal.toFixed(2));
        var discount =parseInt($("#delivery_charge").text());
        $("#final_amt").text(parseInt(ftotal)+discount);
        $(document).on('click', '.show_modal', function(){
            //alert('hi');
                $("#exampleModalCenter").modal('show');
                $("#pro_img").removeAttr('src');
                $("#pro_txt").text('');
                $("#product_name").text('');
                $("#product_qty").text('');
                $("#product_price").text('');
                $("#product_totalprice").text('');
                $("#pro_img").show();
                $("#show_text_product").show();
                var myimage = $(this).attr('product_image');
                var mytxt = $(this).attr('product_text');
                var product_name = $(this).attr('product_name');
                var product_qty = $(this).attr('product_qty');
                var product_price = $(this).attr('product_price');
                var product_totalprice = $(this).attr('product_totalprice');
                if(myimage.indexOf('.') > -1)
                {
                    $("#pro_img").attr('src',myimage);
                }
                else
                {
                    $("#pro_img").hide();
                }
                if(mytxt == '')
                {
                    //alert(mytxt);
                    $("#show_text_product").hide();
                }
                //alert(mytxt);
                
                $("#pro_txt").text(mytxt);
                $("#product_name").text(product_name);
                $("#product_qty").text(product_qty);
                $("#product_price").text(product_price);
                $("#product_totalprice").text(product_totalprice);
        });
    $(document).on('click','.btnPlus', function(){
        var myattr = $(this).attr('attr');
        var single_price = $(this).attr('single_price');
        //alert(myattr);  
        const num_qty = $("#num_qty"+myattr).val();
            $("#num_qty"+myattr).val(parseInt(num_qty)+1);
            var num_qty_edit = $("#num_qty"+myattr).val();
            //alert(num_qty_edit);
        var qty_amt = $("#qty_amt"+myattr).val();
        var qty_total_amt = $("#qty_total_amt"+myattr).val();
        var qty_amt_edit = num_qty_edit * single_price;
        $("#qty_amt"+myattr).val(qty_amt_edit);
        $("#qty_total_amt"+myattr).val(qty_amt_edit);
        var ftotal = 0;
        $('input[name="qty_total_amt[]"]').each(function(){
            var myval = parseInt($(this).val());
            ftotal = ftotal + myval
        });
        $("#purchase_total").html(ftotal.toFixed(2));
        var discount =parseInt($("#delivery_charge").text());
        $("#final_amt").text(parseInt(ftotal)+discount);
        $("#amount").val(parseInt(ftotal)+discount);
         //parseInt(discount);
        //alert(ftotal);
        var product_id = $(this).attr('product_id');
        var base_url = "{{url('/')}}";
            var headers = $('meta[name="csrf-token"]').attr('content');
            // console.log("getCategories: ", getCategories);
            var requestData = {
                "id": product_id,
                "design": 'plus'
            };
            $.ajax({
                type: "POST",
                headers: {'X-CSRF-TOKEN': headers},
                data: requestData,
                url: base_url+"/update-item-quantity",
                success: function(msg){
                   /*  console.log('msg: ', msg);
                    $('#item-'+msg).hide();
                    var getItemTotal = $('#item-total-'+msg).text();
                    var itemCount = $('#totalQty').text();
                    var updateTotal = parseInt($('#amount').val()) - parseInt(getItemTotal);
                    console.log('updateTotal: ', updateTotal, ' itemCount: ', itemCount);
                     $('#redo-box').fadeIn().show();
                    $('#amount').val(updateTotal);
                    $('.amount').text(updateTotal);
                    $('#totalQty').text(parseInt(itemCount-1));
                    $('#totalAmount').text(updateTotal); */
                    //location.reload();
                  
                     /* console.log('msg: ', msg);
                     $('#totalQty').text(msg.qty); */
                }
            }); 
            var itemCount = $('#totalQty').text();
                    var totalcounts = parseInt(itemCount) + 1;
                    //alert(totalcounts);
                    $('#totalQty').text(totalcounts);

    });
    $(document).on('click','.btnMinus',function(){
        var myattr = $(this).attr('attr');
        var single_price = $(this).attr('single_price');
        //alert(myattr); 
        const num_qty = $("#num_qty"+myattr).val();
        var minus_check = parseInt(num_qty)-1;
            //alert(minus_check);
        if(minus_check > 0)
        {
            $("#num_qty"+myattr).val(parseInt(num_qty)-1);
            var num_qty_edit = $("#num_qty"+myattr).val();
            //alert(num_qty_edit);
            var qty_amt = $("#qty_amt"+myattr).val();
            var qty_total_amt = $("#qty_total_amt"+myattr).val();
            var qty_amt_edit = num_qty_edit * single_price;
            $("#qty_amt"+myattr).val(qty_amt_edit);
            $("#qty_total_amt"+myattr).val(qty_amt_edit);
            var ftotal = 0;
            $('input[name="qty_total_amt[]"]').each(function(){
                var myval = parseInt($(this).val());
                ftotal = ftotal + myval
            });
            $("#purchase_total").html(ftotal.toFixed(2));
            var discount =parseInt($("#delivery_charge").text());
            $("#final_amt").text(parseInt(ftotal)+discount);
            $("#amount").val(parseInt(ftotal)+discount);
            var product_id = $(this).attr('product_id');
        var base_url = "{{url('/')}}";
            var headers = $('meta[name="csrf-token"]').attr('content');
            // console.log("getCategories: ", getCategories);
            var requestData = {
                "id": product_id,
                "design": 'minus'
            };
            $.ajax({
                type: "POST",
                headers: {'X-CSRF-TOKEN': headers},
                data: requestData,
                url: base_url+"/update-item-quantity",
                success: function(msg){
                   /*  console.log('msg: ', msg);
                    $('#item-'+msg).hide();
                    var getItemTotal = $('#item-total-'+msg).text();
                    var itemCount = $('#totalQty').text();
                    var updateTotal = parseInt($('#amount').val()) - parseInt(getItemTotal);
                    console.log('updateTotal: ', updateTotal, ' itemCount: ', itemCount);
                     $('#redo-box').fadeIn().show();
                    $('#amount').val(updateTotal);
                    $('.amount').text(updateTotal);
                    $('#totalQty').text(parseInt(itemCount-1));
                    $('#totalAmount').text(updateTotal); */
                   // location.reload();
                 /*   var itemCount = $('#totalQty').text();
                   //alert(parseInt(itemCount));
                    $('#totalQty').text(parseInt(itemCount-1)); */
                     // console.log('msg: ', msg);
                    
                }
            }); 
            var itemCount = $('#totalQty').text();
                    var totalcounts = parseInt(itemCount) - 1;
                    //alert(totalcounts);
                    $('#totalQty').text(totalcounts);
        }
        //location.reload();
    });
    $('.delete-cart').on('click', function(){
        //const tablecount = $('#cart-table >tbody >tr').length;
        //alert(tablecount);
        /* if(tablecount > 1)
        { */
            var myattr = $(this).attr('attr1');
        //alert(myattr);  
        var num_qty = $("#num_qty"+myattr).val();
        //alert(num_qty);
        $(this).closest('tr').remove();
                    $(this).parent('tr').remove();
                     var ftotal = 0;
                    $('input[name="qty_total_amt[]"]').each(function(){
                        var myval = parseInt($(this).val());
                        ftotal = ftotal + myval
                        //alert(ftotal);
                    });
                    //alert(ftotal);
                    $("#purchase_total").html(ftotal.toFixed(2));
                    //alert(ftotal);
                    var discount =parseInt($("#delivery_charge").text());
                    $("#final_amt").text(parseInt(ftotal)+discount);
                    $("#amount").val(parseInt(ftotal)+discount);
                    
        var base_url = "{{url('/')}}";
            var headers = $('meta[name="csrf-token"]').attr('content');
            // console.log("getCategories: ", getCategories);
            var requestData = {
                "id": $(this).data('attr'),
                "msgvalue":num_qty
            };
            $.ajax({
                type: "POST",
                headers: {'X-CSRF-TOKEN': headers},
                data: requestData,
                url: base_url+"/delete-cart-item",
                success: function(msg){
                    var itemCount = $('#totalQty').text();
                    var totalcounts = parseInt(itemCount) - num_qty;
                    //alert(totalcounts);
                    $('#totalQty').text(totalcounts);
                   
                }
            }); 
            const tablecount = $('#cart-table >tbody >tr').length;

         if(tablecount == 0)
            { 

                $(".hidefulldiv").hide();
                $(".showmsgdiv").show();

            }
            //location.reload();
            
       });
    $('.delete-carts').on('click', function(){
        // console.log($(this).data('attr'));
        $('#cart-id').val($(this).data('attr'));
        var base_url = "{{url('/')}}";
            var headers = $('meta[name="csrf-token"]').attr('content');
            // console.log("getCategories: ", getCategories);
            var requestData = {
                "id": $(this).data('attr')
            };
            $.ajax({
                type: "POST",
                headers: {'X-CSRF-TOKEN': headers},
                data: requestData,
                url: base_url+"/delete-cart-item",
                success: function(msg){
                    console.log('msg: ', msg);
                    $('#item-'+msg).hide();
                    var getItemTotal = $('#item-total-'+msg).text();
                    var itemCount = $('#totalQty').text();
                    var updateTotal = parseInt($('#amount').val()) - parseInt(getItemTotal);
                    console.log('updateTotal: ', updateTotal, ' itemCount: ', itemCount);
                     $('#redo-box').fadeIn().show();
                    $('#amount').val(updateTotal);
                    $('.amount').text(updateTotal);
                    $('#totalQty').text(parseInt(itemCount-1));
                    $('#totalAmount').text(updateTotal);
                   
                }
            }); 
            
    });

    $('#redo-box a').on('click', function(){
        var base_url = "{{url('/')}}";
            var headers = $('meta[name="csrf-token"]').attr('content');
            // console.log("getCategories: ", getCategories);
            var requestData = {
                "id": $('#cart-id').val()
            };
            $.ajax({
                type: "POST",
                headers: {'X-CSRF-TOKEN': headers},
                data: requestData,
                url: base_url+"/redo-delete-item",
                success: function(msg){
                    console.log('msg: ', msg);
                    $('#redo-box').fadeOut().hide();
                    var getItemTotal = $('#item-total-'+msg).text();
                    var itemCount = $('#totalQty').text();
                    var updateTotal = parseInt($('#amount').val()) + parseInt(getItemTotal);
                    console.log('updateTotal: ', updateTotal, $('#amount').val());
                    $('#item-'+msg).fadeIn().show();
                    $('#amount').val(updateTotal);
                    $('.amount').text(updateTotal);
                    $('#totalQty').text(parseInt(itemCount)+1);
                    $('#totalAmount').text(updateTotal);
                    // setTimeout('location.reload()', 1000);
                }
            }); 
    });
    $(document).on('click','#apply_coupon',function(){
        $('#jsCouponFailure').hide();
        $('#jsCouponSuccess').hide();
        var mycounpon = $("#mycoupon").val();
        //alert(mycounpon);
        var base_url = "{{url('/')}}";
            var headers = $('meta[name="csrf-token"]').attr('content');
            // console.log("getCategories: ", getCategories);
            var requestData = {
                "id": mycounpon
            };
            $.ajax({
                type: "POST",
                headers: {'X-CSRF-TOKEN': headers},
                data: requestData,
                url: base_url+"/coupon-code-check",
                success: function(msg){
                    console.log('msg: ', msg);
                    if(msg == 'true')
                    {
                        // alert('coupon applied successfully');
                       var finalamt =  $("#final_amt").text();
                       //alert(finalamt); coupon_discountcharge
                       
                       var discount = (finalamt - ( finalamt * 20 / 100 )).toFixed(2);
                       var coupondiscount = $("#coupon_discountcharge").text(( finalamt * 20 / 100 ).toFixed(2));
                       $('#coupon_amount').val(( finalamt * 20 / 100 ).toFixed(2));
                       //alert(discount);
                       $("#final_amt").text(discount);
                       $("#amount").val(discount);
                       $('#jsCouponSuccess').show();
                       $('#apply_coupon').prop('disabled', true);
                    }
                    else if(msg == 'false')
                    {
                        // alert('coupon code not valid');
                        $('#jsCouponFailure').show();
                    }
               /*      $('#redo-box').fadeOut().hide();
                    var getItemTotal = $('#item-total-'+msg).text();
                    var itemCount = $('#totalQty').text();
                    var updateTotal = parseInt($('#amount').val()) + parseInt(getItemTotal);
                    console.log('updateTotal: ', updateTotal, $('#amount').val());
                    $('#item-'+msg).fadeIn().show();
                    $('#amount').val(updateTotal);
                    $('.amount').text(updateTotal);
                    $('#totalQty').text(parseInt(itemCount)+1);
                    $('#totalAmount').text(updateTotal); */
                    // setTimeout('location.reload()', 1000);
                }
            });

    });
    /*$(document).on('click','#checkout_submit',function(){
        alert('kk');
        

    });*/

});
</script>
@endsection