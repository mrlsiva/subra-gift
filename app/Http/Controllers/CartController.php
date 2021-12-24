<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Auth;
use Session;
use App\BoxProduct;
use App\Box;
use App\Categories;
use Illuminate\Support\Facades\Storage;
use App\Models\Coupon;

class CartController extends Controller
{	
	/* public function __construct()
    {
        
    } */

    public function addToCart(Request $request) {
       /*  print_r($_POST);
        print_r($request->file('imgInp'));
        exit; */
        $cart_attach = '';
        $cart_attach_text = '';
        if($request['attach'] == 1) {
            $filePath = 'cart';
            Storage::disk('local')->makeDirectory($filePath);
            $attach_mime = $request['attach_mime'];
            if($attach_mime == 'image/png' || $attach_mime == 'image/jpg' || $attach_mime == 'image/jpeg' || $attach_mime == 'image/heic') {
                
                // $image = $attach['image'];    
                $imageName = time().'.'.$request->imgInp->extension();  
   
                 $request->imgInp->move(public_path('cart'), $imageName);                
             
                $cart_attach = $imageName;
            }
        } elseif($request['attach'] == 2) {
            $cart_attach_text = $request['text_product'];
        }
        elseif($request['attach'] == 3) {
            //$cart_attach = $request['attach_val'];
        }
        elseif($request['attach'] == 4) {
            $filePath = 'cart';
            Storage::disk('local')->makeDirectory($filePath);
            $attach_mime = $request['attach_mime'];
            if($attach_mime == 'image/png' || $attach_mime == 'image/jpg' || $attach_mime == 'image/jpeg' || $attach_mime == 'image/heic') {
                
                // $image = $attach['image'];    
                $imageName = time().'.'.$request->imgInp->extension();  
   
                 $request->imgInp->move(public_path('cart'), $imageName);                
             
                $cart_attach = $imageName;
            }
            $cart_attach_text = $request['text_product'];
        }
       /*  print_r($cart_attach);
        print_r($cart_attach_text);
        exit;  */
        // dd(Auth::user()->id);
        DB::table('cart-products')->insert([
            'book_title'=> $request['book_title'],
            'category_id'=> $request['category_id'],
            'user_id' => Auth::user()->id,
            'sku'=> $request['sku'],
            'qty'=> $request['qty'],
            'amount'=> $request['amount'],
            'book_id'=> $request['book_id'],
            'attach' => $request['attach'],
            'cart_attach' => $cart_attach,
            'cart_attach_text' => $cart_attach_text,
            ] );
        $qtyCount = DB::table('cart-products')->where('user_id',Auth::user()->id)->where('status', '1')->sum('qty');
        $totalAmount = DB::table('cart-products')->where('user_id',Auth::user()->id)->where('status', '1')->sum('amount');
        $response = [
            "qty" => $qtyCount,
            "totalAmount" => $totalAmount
        ];
        Session::put('totalAmount', $totalAmount);
        Session::put('qty', $qtyCount);
        return $response;
    }

    public function getCarts(Request $request){ 
    	$array = DB::table("forestseries")->get();

    	return view("payments.cart")->with("items",$array);
    }  

    public function viewCart(Request $request) {
        // dd(Auth::user());
        if (!empty(Auth::user())){
            $user_id = Auth::id();
                $getItems = DB::table('cart-products as c')
            ->select('c.id','c.sku', 'c.book_title', 'c.amount','c.status', 'c.qty', 'cat.series_table_name', 'attach', 'cart_attach','cart_attach_text')
            ->join('categories as cat','c.category_id','cat.id')
            ->where('user_id',Auth::user()->id)    
            ->where('c.status', '1')
            ->where('c.amount', '>', 0)
            ->get();
                // dd($getItems);
            // $defaultPath = 
            $getTable = [];$total=0;
            foreach ($getItems as $k=>$item) {
                // dd($item->id);
                $cat_img = DB::table($item->series_table_name)->select('thumb_img')->where("sku",$item->sku)->first();
                // dd($item, $cat_img);
                $getTable[$k]["image"] = url("/")."/storage/app/public/uploads/img/". $item->series_table_name."/".$cat_img->thumb_img;
                // $getTable[$k]["image"] =url('storage/app/public/uploads/img/'.$item->series_table_name.'/'.$cat_img->thumb_img );
                $getTable[$k]["product_image"] = url("/")."/public/cart/". $item->cart_attach;
                $getTable[$k]["product_text"] = $item->cart_attach_text;
                $getTable[$k]["attach"] = $item->attach;
                $getTable[$k]["cart_attach"] = $item->cart_attach;
                $getTable[$k]["sku"] = $item->sku;
                $getTable[$k]["id"] = $item->id;
                $getTable[$k]["book_title"] = $item->book_title;
                $getTable[$k]["amount"] = $item->amount;
                $getTable[$k]["qty"] = $item->qty;
                $final_price = intval($item->amount) * intval($item->qty);
                $getTable[$k]["curr_total"] = $final_price;
                $total += $final_price;
            }

           
            /*$boxes = DB::table('box_products')->select('box_products.*')->where('box_products.user_id', $user_id)->where('box_products.status', "=", 1)->get(); 
            $i = 1;
            $lineItems = [];
            foreach ($boxes as $box) {
                $lineItems[$i]['box'] = $box;
                $lineItems[$i]['box_title'] = Box::where('id',$box->box_id)->value('plan');
                $lineItems[$i]['box_category'] = Categories::where('id', $box->category_id)->value('series_name');
                $total += $box->box_amount;
                $cart_ids = json_decode($box->cart_ids);
                $boxItems = DB::table('cart-products as c')
                    ->select('c.id','c.sku', 'c.book_title', 'c.amount','c.status', 'c.qty', 'cat.series_table_name')
                    ->join('categories as cat','c.category_id','cat.id')
                    ->where('user_id',Auth::user()->id)
                    ->whereIn('c.id', $cart_ids)
                    ->where('c.status', '1')
                    ->get();
                foreach ($boxItems as $k=>$item) {
                    // dd($item->id);
                    $cat_img = DB::table($item->series_table_name)->select('thumb_img')->where("sku",$item->sku)->first();
                    // dd($item, $cat_img);
                    $boxTable[$k]["image"] = url("/")."/storage/app/public/uploads/img/".$item->series_table_name."/thumb/".$cat_img->thumb_img;
                    $boxTable[$k]["sku"] = $item->sku;
                    $boxTable[$k]["id"] = $item->id;
                    $boxTable[$k]["book_title"] = $item->book_title;
                    $boxTable[$k]["amount"] = $item->amount;
                    $boxTable[$k]["qty"] = $item->qty;
                    $final_price = intval($item->amount) * intval($item->qty);
                    $boxTable[$k]["curr_total"] = $final_price;
                    $total += $final_price;
                }
                $lineItems[$i]['items'] = $boxTable;
                $i++;
            }    */    
        
            $coupons = Coupon::where('coupon_status', 1)->where('coupon_valid_date', '>=',date('Y-m-d'))->orderBy('id', 'DESC')->get();
        
            return view('pages/viewCart', compact('coupons'))->with('cartItems', $getTable)->with('total', $total);
        } else {
            return redirect('login');
        }
        
    }

    public function viewCartProducts(Request $request) {
        // dd(Auth::user());
        if (!empty(Auth::user())){
            $user_id = Auth::id();
            $boxTable = [];
            $total=0;

            $boxes = DB::table('box_products')->select('box_products.*')->where('box_products.user_id', $user_id)->where('box_products.status', "=", 1)->get();
            $i = 1;
            $lineItems = [];
            $getTable = [];
            foreach ($boxes as $box) {
                $lineItems[$i]['box'] = $box;
                $lineItems[$i]['box_title'] = Box::where('id',$box->box_id)->value('plan');
                //$lineItems[$i]['box_category'] = Categories::where('id', $box->category_id)->value('series_name');
                $total += $box->box_amount;
                $cart_ids = json_decode($box->cart_ids);
                $boxItems = DB::table('cart-products as c')
                    ->select('c.id','c.sku', 'c.book_title', 'c.amount','c.status', 'c.qty', 'cat.series_table_name', 'cat.series_name')
                    ->join('categories as cat','c.category_id','cat.id')
                    ->where('user_id',Auth::user()->id)
                    ->whereIn('c.id', $cart_ids)
                    ->where('c.status', '1')
                    ->where('c.amount', 0)
                    ->get();
                foreach ($boxItems as $k=>$item) {
                    $cat_img = DB::table($item->series_table_name)->select('thumb_img')->where("sku",$item->sku)->first();
                    $boxTable[$k]["image"] = "https://littleprodigybooks.in/"."/storage/app/public/uploads/img/".$item->series_table_name."/thumb/".$cat_img->thumb_img;
                    $boxTable[$k]["category"] = $item->series_name;
                    $boxTable[$k]["sku"] = $item->sku;
                    $boxTable[$k]["id"] = $item->id;
                    $boxTable[$k]["book_title"] = $item->book_title;
                    $boxTable[$k]["amount"] = $item->amount;
                    $boxTable[$k]["qty"] = $item->qty;
                    $final_price = intval($item->amount) * intval($item->qty);
                    $boxTable[$k]["curr_total"] = $final_price;
                    $total += $final_price;
                }
                $lineItems[$i]['items'] = $boxTable;
                $i++;
            }        

            return view('pages/viewCartProducts', compact('lineItems'))->with('cartItems', $getTable)->with('total', $total);
        } else {
            return redirect('login');
        }        
    }

    public function deleteItem(Request $request) {
        // $get_item = DB::table('cart-products')->where("id",$request->id)->first();
        // DB::table('cart-temp')->insert([
        //     "temp_id" => $request->id,
        //     "user_id" => $get_item->user_id,
        //     "book_title" => $get_item->book_title,
        //     "category_id" => $get_item->category_id,
        //     "sku" => $get_item->sku,
        //     "qty" => $get_item->qty,
        //     "amount" => $get_item->amount,
        //     "book_id" => $get_item->book_id,
        //     "status" => $get_item->status,
        // ]);
        // DB::table('cart-products')->where("id",$request->id)->delete();
        DB::table('cart-products')->where("id",$request->id)->update([
            'status' => '0'
        ]);
        $qty = $request->msgvalue;
   /*      $qtyCount = DB::table('cart-products')
                    ->where('user_id',Auth::user()->id)
                    ->where('status', '1')
                    ->sum('qty');
        $totalAmount = DB::table('cart-products')->where('user_id',Auth::user()->id)->where('status', '1')->sum('amount');
        
        Session::put('totalAmount', $totalAmount);
        Session::put('qty', $qtyCount); */
        $msg = $request->id;
        session ()->put ( ['qty' => ( session ( 'qty' ) ? session ( 'qty' ) - $qty : '' )] );
        session ()->save ();
        return $msg;
        // dd($request->id, $get_item);
    }
    public function updateItemQty(Request $request)
    {
        /* print_r($request->id);
        exit; */
       /*  $qty_value =  DB::table('cart-products')->where("id",$request->id)->first();
        $sum_qty = $qty_value->qty + 1;
        DB::table('cart-products')->where("id",$request->id)->update([
            'qty' => $sum_qty
        ]); */
        //Session::put('qty', 4);
        if($request->design == 'plus')
        {
            $qty_value =  DB::table('cart-products')->where("id",$request->id)->first();
            $sum_qty = $qty_value->qty + 1;
            DB::table('cart-products')->where("id",$request->id)->update([
                'qty' => $sum_qty
            ]);
            session ()->put ( ['qty' => ( session ( 'qty' ) ? session ( 'qty' ) + 1 : '' )] );
        session ()->save ();
        }
        if($request->design == 'minus')
        {
            $qty_value =  DB::table('cart-products')->where("id",$request->id)->first();
            $sum_qty = $qty_value->qty - 1;
            DB::table('cart-products')->where("id",$request->id)->update([
                'qty' => $sum_qty
            ]);
            session ()->put ( ['qty' => ( session ( 'qty' ) ? session ( 'qty' ) - 1 : '' )] );
        session ()->save ();
        }
     /*    $qtyCount = DB::table('cart-products')
                    ->where('user_id',Auth::user()->id)
                    ->where('status', '1')
                    ->sum('qty');
        $totalAmount = DB::table('cart-products')->where('user_id',Auth::user()->id)->where('status', '1')->sum('amount');
        
        Session::put('totalAmount', $totalAmount);
        Session::put('qty', $qtyCount); 
        $msg = $request->id;*/
        return $sum_qty;
    }
    public function redoDeleteItem(Request $request) {
        DB::table('cart-products')->where("id",$request->id)->update([
            'status' => '1'
        ]);
        $qtyCount = DB::table('cart-products')
                    ->where('user_id',Auth::user()->id)
                    ->where('status', '1')
                    ->sum('qty');
        $totalAmount = DB::table('cart-products')->where('user_id',Auth::user()->id)->where('status', '1')->sum('amount');
        
        Session::put('totalAmount', $totalAmount);
        Session::put('qty', $qtyCount);
        $msg = $request->id;
        return $msg;
    }

    public function getSubscribe(Request $request){     	

    	$exists_plan = DB::table("user_plan")->where('user_id',\Auth::user()->id)->where('status',1)->count();    	    	
    	$plans = DB::table("plans")->where('id',1)->first();
    	    	

    	return view("payments.subscribe")->with("exists_plan",$exists_plan)->with("plans",$plans);
    }
    public function checkCouponCode(Request $request)
    {
        $plans = DB::table("coupons")->where('coupon',$request->id)->first();
        $discount = 0;
        if($plans)
        {
            if($plans->coupon_type == 1)
                $discount = number_format($request->amount * ($plans->coupon_value/100), 2);
            elseif($plans->coupon_type == 2)
                $discount = number_format($plans->coupon_value,2);
            $msg = 'true';
        }
        else
        {
            $msg = 'false';
        }
        return ['status' => $msg, 'discount' => $discount, 'amount'=>($request->amount-$discount) ];
    }   
}
