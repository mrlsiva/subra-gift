<?php

namespace App\Http\Controllers;

// use Mail;
use Illuminate\Http\Request;
// use App\Categories;
use App\User;
use Auth;
use Session;
use DB;
use App\Mail\CommentMail;
use App\Models\Order;
use App\Models\OrderDetail;

class CheckoutController extends Controller
{

	public function purchasePlanView(Request $request){
		return view('payments.plan_purchase_view')->with('data',$request->all());
	}
    public function SubscribProcess(Request $request)
    {
		/*print_r($request->all());
		die();*/

		$type = $request->input("type");
		$users = DB::table("users")->where("id",Auth::user()->id)->first();
		/* dd($request->all());
		dd($type);
		dd($users);
		 exit; */
		if(isset($type) && $type==1){
			//books
			$data["txnid"] = "Txn" . rand(10000,99999999);
			$data["amount"] = $request->input("amount");// can use plan price or total book price here i.e $total
			$data["pinfo"] = $request->input("sku");// can use plan id or total book id here i.e $books
			$data["fname"] = $users->name;
			$data["email"] = $users->email;
			$data["udf5"] = "BOLT_KIT_PHP7";
			//dd($request->all());
		}elseif(isset($type) && $type==3){
			//books
			$data["txnid"] = "Txn" . rand(10000,99999999);
			$data["amount"] = $request->input("amount");// can use plan price or total book price here i.e $total
			$data["pinfo"] = $request->input("sku");// can use plan id or total book id here i.e $books
			$data["fname"] = $users->name;
			$data["email"] = $users->email;
			$data["udf5"] = "BOLT_KIT_PHP7";
			//dd($request->all());
		}elseif(isset($type) && $type==4){
			//books
			$data["txnid"] = "Txn" . rand(10000,99999999);
			$data["amount"] = $request->input("amount");// can use plan price or total book price here i.e $total
			$data["pinfo"] = $request->input("box_product_id");// can use plan id or total book id here i.e $books
			$data["fname"] = $users->name;
			$data["email"] = $users->email;
			$data["udf5"] = "BOLT_KIT_PHP7";
			//dd($request->all());
		} else {
			// $getUser = DB::table("user_plan")->where("user_id",Auth::user()->id)->first();
			// dd($getUser);
			$data["txnid"] = "Txn" . rand(10000,99999999);
			$data["amount"] = $request->input("amount");// can use plan price or total book price here i.e $total
			$data["pinfo"] = $request->input("plan");// can use plan id or total book id here i.e $books
			$data["plan"] = $request->input("plan");
			$data["fname"] = $users->name;
			$data["email"] = $users->email;
			$data["udf5"] = "BOLT_KIT_PHP7";
		}
		
    	$hash = $this->getHash($data);
    	$return_url = $this->getCallbackUrl();
    	
        return view('payments.payumoney',compact('hash','return_url','data'));
    }

    public function SubscribeResponse(Request $request)
    {
		 /*dd($request->all(), $request->path(), $request->input("plan"));
		  exit;*/ 
    	if(!empty($request->all())) {
	    	$key				=   $request->input("key");
			// $salt				=   $request->input("salt");
			$salt				=   config("app.payu_salt");
			$txnid 				= 	$request->input("txnid");
		    $amount      		= 	$request->input("amount");
			$productInfo  		= 	$request->input("productinfo");
			$firstname    		= 	$request->input("firstname");
			$email        		=	$request->input("email");
			$udf5				=   $request->input("udf5");
			$mihpayid			=	$request->input("mihpayid");
			$status				= 	$request->input("status");
			$resphash			= 	$request->input("hash");
			$address1			=  	$request->input("address1");
			$phone				=  	$request->input("phone");

			//Calculate response hash to verify	
			$keyString 	  		=  	$key.'|'.$txnid.'|'.$amount.'|'.$productInfo.'|'.$firstname.'|'.$email.'|||||'.$udf5.'|||||';
			$keyArray 	  		= 	explode("|",$keyString);
			$reverseKeyArray 	= 	array_reverse($keyArray);
			$reverseKeyString	=	implode("|",$reverseKeyArray);
			$CalcHashString 	= 	strtolower(hash('sha512', $salt.'|'.$status.'|'.$reverseKeyString));	
		
			if ($status == 'success'  && $resphash == $CalcHashString) {
				$msg = "Transaction Successful";
				$productInfo = json_decode($productInfo,true);

				/*print_r($productInfo);
				print_r($request->all());*/

				$ord = new Order;
				$ord->user_id = Auth::id();
				$ord->email = $request->email;
				$ord->phone = $request->phone;
				$ord->firstname = $request->firstname;
				$ord->address = $request->address1;
				$ord->txn_id = $txnid;
				$ord->txn_details = $mihpayid;
				$ord->amount = $request->amount;
				$ord->dvy_charge = 60;
				if($request->coupon != "" && $request->coupon != 'undefined') {
					$ord->coupon = $request->coupon;
				}
				$ord->save();

				$sub_total = 0;
				$carts = DB::table('cart-products')->whereIn('id', $productInfo['id'])->get();
				foreach ($carts as $cart) {
					$od = new OrderDetail;
					$od->ord_id = $ord->id;
					$od->book_id = $cart->book_id;
					$od->book_title = $cart->book_title;
					$od->category_id = $cart->category_id;
					$od->sku = $cart->sku;
					$od->qty = $cart->qty;
					$od->price = $cart->amount;
					$od->total_price = $cart->qty * $cart->amount;
					$od->attach = $cart->attach;
					$od->cart_attach = $cart->cart_attach;
					$od->cart_attach_text = $cart->cart_attach_text;
					$od->save();

					$sub_total += $cart->qty * $cart->amount;
				}

				$ordd = Order::find($ord->id);
				$ordd->sub_total = $sub_total;
				$ordd->save();	

				$carts = DB::table('cart-products')->whereIn('id', $productInfo['id'])->delete();

				$order = Order::where('id', $ord->id)->first();
		        /*$orders = Order::join('users', 'users.id', '=', 'user_id')->join('order_details', 'order_details.ord_id', '=', 'orders.id')->where('orders.id', $id)->OrderBy('order_details.id', 'DESC')->get();*/

		        $getItems = DB::table('order_details as c')
		        ->select('c.id','c.sku', 'c.book_title', 'c.price','c.total_price', 'c.qty', 'cat.series_table_name', 'attach', 'cart_attach','cart_attach_text')
		        ->join('categories as cat','c.category_id','cat.id')
		        ->where('ord_id', $ord->id) 
		        ->get();
		           
		        $orders = $getTable = []; $total=0;
		        foreach ($getItems as $k=>$item) {
		            $cat_img = DB::table($item->series_table_name)->select('thumb_img')->where("sku",$item->sku)->first();
		            $getTable[$k]["product_image"] = url("/")."/storage/app/public/uploads/img/". $item->series_table_name."/".$cat_img->thumb_img;
		            $getTable[$k]["attach_image_url"] = url("/")."/public/cart/". $item->cart_attach;
		            $getTable[$k]["attach_text"] = $item->cart_attach_text;
		            $getTable[$k]["attach"] = $item->attach;
		            $getTable[$k]["attach_image"] = $item->cart_attach;
		            $getTable[$k]["sku"] = $item->sku;
		            $getTable[$k]["id"] = $item->id;
		            $getTable[$k]["book_title"] = $item->book_title;
		            $getTable[$k]["price"] = $item->price;
		            $getTable[$k]["total_price"] = $item->total_price;
		            $getTable[$k]["qty"] = $item->qty;
		        }
		        $orders = $getTable;

				$data = [];
				$today = date('Y-m-d');
				$admin_details = User::where('role_id',1)->first();
				$users = DB::table("users")->where("id",Auth::user()->id)->first();
				
				$data['email_type'] = 'invoice_2';
				$data['to_email']   = $users->email;
				$data['to_name']    = $users->name;
				$data['cc_email']   = $admin_details->email;
				$data['cc_name']    = $admin_details->name;
				$data['subject']  = "Order Placed";
				$data['txnid']    = $txnid;
				$data['amount']     = $amount;
				
				$data['order']= $order;
				$data['orders']= $orders;

				$data['status']   = $request->input("status");
				$data['address1'] = $request->input("address1");
				$data['phone']    = $request->input("phone");
				$data['buy_date']  = $today;
			try {
				sendCommonMail('invoice', $data);
			}
			catch(Exception $ex) {
                //$this->populate_array[] = array($row[2] => $ex->getLine());
                //return "We've got errors!";
            }
            catch(\Swift_TransportException $e) {
                $response = $e->getMessage();
            }
            catch(\Illuminate\Database\QueryException $ex) {
                //$this->populate_array[] = array($row[2] => $ex->getLine());
            }

				/*$today = date('Y-m-d');
				$admin_details = User::where('role_id',1)->first();
				$users = DB::table("users")->where("id",Auth::user()->id)->first();
				$data['email_type'] = 'invoice_1';
				$data['to_email']   = $users->email;
				$data['to_name']    = $users->name;
				$data['cc_email']   = $admin_details->email;
				$data['cc_name']    = $admin_details->name;
				$data['subject']	= "Combo Books Purchase";
				$data['txnid'] 		= $txnid;
				$data['amount']     = $amount;
				$data['productInfo']= $books;
				//$data['status']		= $request->input("status");
				$data['address1']	= $request->input("address1");
				$data['phone']		= $request->input("phone");
				$data['buy_date'] 	= $today;
				sendCommonMail('invoice', $data);*/
				return redirect('/transaction/details')
					->with('message', $msg)
					->with('txnId', $txnid);
			} else {
				//hash code failed handler
				$msg = "Transaction Failed";
				return redirect('/transaction/failure')
					->with('message', $msg);
			}     		
			//redirect url here
			// dd('Payment Successfully done!',$request->input("productinfo"), $msg,Auth::user()->id,$request->all());
			
					// ->with('productInfo', $request->input("productinfo"));
    	}
    	// return "Success";
		/*return redirect("/membership")->with('pay-data', $request->all());*/
			//->with('pay-response', $msg)
    }

	public function getHash($data){    	

        $hash=hash('sha512', config("app.payu_key").'|'.$data["txnid"].'|'.$data["amount"].'|'.$data["pinfo"].'|'.$data["fname"].'|'.$data["email"].'|||||'.$data["udf5"].'||||||'.config("app.payu_salt"));
		$json=array();
		//$json['success'] = $hash;
    	return $hash;
    }

    function getCallbackUrl()
	{
		$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
		return $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'] . '/response';
	}
    
    public function myorders() {
    	if(Auth::check()) {
	    	$orders = Order::where('user_id', Auth::id())->OrderBy('orders.id', 'DESC')->get();
	    	return view('pages/myorders',compact('orders'));
	    } else {
	    	session()->put('previous-route', url('myorders'));
	    	return redirect("login");
	    }
    }

    public function myOrderDetails($id = null) {
        $order = Order::where('id', $id)->first();
        /*$orders = Order::join('users', 'users.id', '=', 'user_id')->join('order_details', 'order_details.ord_id', '=', 'orders.id')->where('orders.id', $id)->OrderBy('order_details.id', 'DESC')->get();*/

        $getItems = DB::table('order_details as c')
        ->select('c.id','c.sku', 'c.book_title', 'c.price','c.total_price', 'c.qty', 'cat.series_table_name', 'attach', 'cart_attach','cart_attach_text')
        ->join('categories as cat','c.category_id','cat.id')
        ->where('ord_id', $id) 
        ->get();
           
        $orders = $getTable = []; $total=0;
        foreach ($getItems as $k=>$item) {
            $cat_img = DB::table($item->series_table_name)->select('thumb_img')->where("sku",$item->sku)->first();
            $getTable[$k]["product_image"] = url("/")."/storage/app/public/uploads/img/". $item->series_table_name."/".$cat_img->thumb_img;
            $getTable[$k]["attach_image_url"] = url("/")."/public/cart/". $item->cart_attach;
            $getTable[$k]["attach_text"] = $item->cart_attach_text;
            $getTable[$k]["attach"] = $item->attach;
            $getTable[$k]["attach_image"] = $item->cart_attach;
            $getTable[$k]["sku"] = $item->sku;
            $getTable[$k]["id"] = $item->id;
            $getTable[$k]["book_title"] = $item->book_title;
            $getTable[$k]["price"] = $item->price;
            $getTable[$k]["total_price"] = $item->total_price;
            $getTable[$k]["qty"] = $item->qty;
            // $total += $item->total_price;
        }
        $orders = $getTable;
        return view('pages/myorder-details',compact('order', 'orders'));
    }
}
