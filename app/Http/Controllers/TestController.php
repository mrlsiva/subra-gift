<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Blog;
use App\BlogComments;
use App\BlogCommentReplies;
use App\BoxProduct;
use App\Box;
use App\CartProduct;
use App\UserBoxBook;
use Auth;
use App\User;
use Session;
use DB;
use App\Mail\CommentMail;
use Illuminate\Support\Facades\Mail;

class TestController extends Controller
{
    function encrypt_url($string = null) {
      $key = "MAL_979805"; //key to encrypt and decrypts.
      $result = '';
      $test = "";
       for($i=0; $i<strlen($string); $i++) {
         $char = substr($string, $i, 1);
         $keychar = substr($key, ($i % strlen($key))-1, 1);
         $char = chr(ord($char)+ord($keychar));

         $test[$char]= ord($char)+ord($keychar);
         $result.=$char;
       }

       return urlencode(base64_encode($result));
    }

    function decrypt_url($string) {
        $key = "MAL_979805"; //key to encrypt and decrypts.
        $result = '';
        $string = base64_decode(urldecode($string));
        for($i=0; $i<strlen($string); $i++) {
          $char = substr($string, $i, 1);
          $keychar = substr($key, ($i % strlen($key))-1, 1);
          $char = chr(ord($char)-ord($keychar));
          $result.=$char;
        }
        return $result;
    }

    public function getSeriesUpdate(Request $request) {
      if ($request->isMethod('post')) {
        //print_r($request->all());
        $table = $request->table;
        $sku = $request->sku;
        $skus = explode(',', $sku);
        //print_r($skus);
        $price = $request->actual_price;
        $users = DB::connection('mysql2')->table($table)->whereIn('sku', $skus)->update(['actual_price'=> $price]);
        return redirect('series-update');
      } elseif ($request->isMethod('get')) {
        return view('series-update');
      }
    }

    /*public function getSeriesUpdate() {
      $table = 'itscooltolearnaboutcountries';
      $skus = [55,56,57,58,59,60,61,62,63,72,73,74,64,65,66,75];
      $price = 155;
      $users = DB::connection('mysql2')->table($table)->whereIn('sku', $skus)->update(['actual_price'=> $price]);
      echo "Updated!";
    }*/

    public function getBoxBooksList() {
      echo "comes here 11";
      //die();
      /*$products = UserBoxBook::find(11);
      $box_products = BoxProduct::find($products->box_product_id);
      //print_r($products);
      //print_r($box_products);
      $pros = json_decode($products->product_details, true);
      //print_r($pros);
      //print_r($pros['cats']);
      //print_r($pros['skus']);

      $books = array_combine($pros['skus'], $pros['cats']);

      //$books = [];
      foreach($books as $key => $val)
      {
         echo $key.' ==> '.$val;
         echo "<br />";
      }

      die();*/
      //$cart = CartProduct::whereIn('id', $carts)->pluck('book_title')->toArray();
      //$books = implode(', ', $cart);
      //echo $books;
      //die();
      $books = "Test book1, Test book2";
      $data = [];
      $today = date('Y-m-d');
      $admin_details = User::where('role_id',1)->first();
      $users = DB::table("users")->where("id",Auth::user()->id)->first();
      $data['email_type'] = 'invoice_1';
      $data['to_email']   = $users->email;
      $data['to_name']    = $users->name;
      $data['cc_email']   = $admin_details->email;
      $data['cc_name']    = $admin_details->name;
      $data['subject']  = "Combo Books Purchase";
      $data['txnid']    = '123';
      $data['amount']     = 1000;
      $data['productInfo']= $books;
      $data['status']   = 123;//$request->input("status");
      $data['address1'] = 'Chennai';//$request->input("address1");
      $data['phone']    = 9677967042; //$request->input("phone");
      $data['buy_date']   = $today;
      //sendCommonMail('invoice', $data);

      try {
        $return = Mail::to($data['to_email']);
        if(isset($data['cc_email']))
        {
          //$return->cc($data['cc_email']);
        }
        $return->send(new CommentMail($data));
      }
      catch(Exception $ex) {
          //$this->populate_array[] = array($row[2] => $ex->getLine());
          return "We've got errors!";
      }
      catch(\Swift_TransportException $e) {
          return $response = $e->getMessage();
      }
      catch(\Illuminate\Database\QueryException $ex) {
          //$this->populate_array[] = array($row[2] => $ex->getLine());
        return $ex->getMessage();
      }

      echo "comes here";
      die();
      
      DB::table('cart-products')->whereIn('id', $carts)->update(['status' => '2']);

      $cart_ids = DB::table('box_products')->where('id', $pro)->value('cart_ids');
            $carts = json_decode($cart_ids, true);
            DB::table('cart-products')->whereIn('id', $carts)->update(['status' => '2']);
      echo "Ave Maria";
      die();

      $books = DB::table('user_books')
                    ->leftJoin('users','users.id','user_books.user_id')
                    ->leftJoin('categories', function($join){
                        $join->on('categories.id','=','user_books.cat_id');
                    })
                    ->select('users.name','categories.series_table_name')
                    //->where('user_books.cat_id','!=null')
                    ->whereNotNull('user_books.cat_id')
                    ->whereNotNull('user_books.book_id')
          ->orderBy('user_books.id','DESC')
                    ->get();
                   /*  dd($books);
                    //print_r($books);
                    exit;  */   

            foreach($books as $books)
            {
               /*  $series = trim(strtolower($books->series_name));
                $series1 = preg_replace('/\s+/', '',$series); */
                 /*  dd($series1);
                    exit;   */
                    $series1 = $books->series_table_name;
                    $books2 = DB::table('user_books')
                    ->leftJoin('users','users.id','user_books.user_id')
                    ->leftJoin('categories', function($join){
                        $join->on('categories.id','=','user_books.cat_id');
                    })
                    
                    ->leftJoin($series1,$series1.'.id','user_books.book_id')
                   
                    ->select('users.name as username','categories.series_name as categoryname',
                            'user_books.*',$series1.'.book_title as bookname')
                    ->whereNotNull('user_books.cat_id')
                    ->whereNotNull('user_books.book_id')
                    //->where('user_books.cat_id','!=null')
          ->orderBy('user_books.id','DESC')
                    ->get();
                   /*  dd($books2);
                    exit;   */
            }
    }
}