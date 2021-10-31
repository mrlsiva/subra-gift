<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use App\BlogComments;
use Session;
use DB;
use App\Categories;
use App\Blog;
use Log;
use Illuminate\Support\Facades\Input;
use App\Models\Coupon;
use App\UserBoxBook;
use App\Trialbooks;
use App\Models\Order;
use App\Models\OrderDetail;

class AdminController extends Controller
{
    public function __construct(){
        // Only admin is allowed restriction can be given here 
        //$this->middleware('admin');
    }

    public function addBooks(){
        $categories = Categories::all();        
        return view('adminAddBooks',compact('categories'));
    }

    public function deactivateAccount(Request $request){
        DB::table('user_plan')->where('user_id', $request['user'])->update(
            [
                'expiry' => NOW()
            ]
        );
       return redirect("admin/notification-screen");
    }
    
    // suguna code
    // public function subscriberList(Request $request){
    //     $tables = DB::table('user_plan')->get(); 
    //     $categories = array();
    //     $categories[] = DB::table('user_plan as c')
    //     ->leftjoin('users'.' as sc','sc.id','c.user_id')
    //     ->where('c.expiry', '>=', now())->get();
    //     return view('adminSubscriberList',compact('categories'));
    // }
    
    // saravanan code
    public function subscriberList(Request $request){
        $tables = DB::table('user_plan')->get(); 
        $categories = array();
        $categories[] = DB::table('user_plan as c')
		->leftjoin('users'.' as sc','sc.id','c.user_id')
		->leftjoin('sessions'.' as s','s.user_id','c.user_id')
		->select('sc.*','c.plan_id','c.expiry','c.phone',DB::raw("(select user_id from sessions where user_id=c.user_id) as session_id"))
		->where('c.expiry', '>=', now())
		->get();
        return view('adminSubscriberList',compact('categories'));
    }

    public function unsubscriberList(Request $request){
        $tables = DB::table('user_plan')->get(); 
        $categories = array();
        $categories[] = DB::table('user_plan as c')->leftjoin('users'.' as sc','sc.id','c.user_id')->where('c.expiry', '<=', now())->get();
        return view('adminUnsubscriberList',compact('categories'));
    }

    public function addTrialBooks(){
        $categories = Categories::all();        
        return view('adminAddTrialBooks',compact('categories'));
        //->with('categories',$categories);
    }

    public function createTable($table_name, $fields = [])
    {
        // check if table is not already exists
        try{
            if (!Schema::hasTable($table_name)) {
                Schema::create($table_name, function (Blueprint $table) use ($fields, $table_name) {
                    $table->increments('id');
                    if (count($fields) > 0) {
                        foreach ($fields as $field) {
                            if($field['type'] == 'enum'){
                                $table->{$field['type']}($field['name'], array('Yes', 'No'))->default('No');
                            } else{                                
                                $table->{$field['type']}($field['name'])->nullable();
                            }
                        }
                    }
                    $table->timestamps();
                });

                //return response()->json(['message' => 'Given table has been successfully created!'], 200);
                $response = "Table <span class='bold-text'>".$table_name ."</span> has been successfully created!";               
            }else{
                $response = "Table <span class='bold-text'>".$table_name ."</span> already exists.";
            }
            return $response;
        }catch(\Exception $e){
            dd($e);
        }
    }

    public function operate(Request $request)
    {
        try{
            $table_name = $request->input('db_category');
        // dd($request->all(),'Test', $table_name);
        // set your dynamic fields (you can fetch this data from database this is just an example)
        $fields = [
            ['name' => 'book_title', 'type' => 'string'],
            ['name' => 'book_path', 'type' => 'string'],
            ['name' => 'thumb_img', 'type' => 'string'],
            ['name' => 'product_img', 'type' => 'string'],
            ['name' => 'product_details', 'type' => 'longText'],
            ['name' => 'actual_price', 'type' => 'integer'],
            ['name' => 'offer_price', 'type' => 'integer'],
            // ['name' => 'sale', 'type' => 'enum'],ENUM('Grams', 'Kgs', 'Pounds')
            ['name' => "sale", 'type' => "enum"],
            ['name' => 'in_stock', 'type' => 'text'],
            ['name' => 'sku', 'type' => 'integer'],
            ['name' => 'categories', 'type' => 'string'],
            ['name' => 'tags', 'type' => 'string'],
            ['name' => 'isbn', 'type' => 'string'],
            ['name' => 'description', 'type' => 'longText'],
            ['name' => 'additional_info', 'type' => 'string'],
            ['name' => 'categories_id', 'type' => 'integer'],
            ['name' => 'review', 'type' => 'longText']
        ];

        //return $this->createTable($table_name, $fields);
        // print_r($request->file( "cat_banner"));
        $this->createCategory($request->all());
                
        $message = $this->createTable($table_name, $fields);
        Session::flash('message', $message); 
        /*
        @if(Session::has('message'))
        <p class="alert {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('message') }}</p>
        @endif
        */
        return redirect("admin/add-books");
        } catch(\Exception $e){
            dd($e);
        }
        
        
    }

    public function dashboard(Request $request)
    {
        $activeUsers = DB::table('sessions as s')->whereNotNull('s.user_id')->count();
        // dd($activeUsers, 'Test');
        Session::flash('activeUsers', $activeUsers);
        $request->session()->forget('booksByCategory');
        return view('adminDashboard');
        
    }

    public function insertTrialBookToTable(Request $request){
        $id = $request->input('book_category');

        $trial_id = DB::table('trialbooks')->insertGetId(
            [
                'book_title' => $request['book_title'],
                //'pdf' => $request['book_title'].'.'.$request['book']->getClientOriginalExtension(),
                'thumb_img' => $request['book_title'].'.'.$request['prod_thumb']->getClientOriginalExtension(), 
                'categories_id' => $request['book_category']
            ]
        );

        $cat_image = storage_path("app/public/uploads/img/trialbooks");

        $thumb = $cat_image.'/thumb';
        if(!file_exists($thumb)){
            mkdir($thumb);
        }
        
        $book = $cat_image.'/books/trial_'.$trial_id;
        if(!file_exists($book)){
            mkdir($book);
        }

        $cat_img = $request['prod_thumb'];
        //$prod_book = $request['book'];

        //$thumbName = $request['book_title'].'.'.$cat_img->getClientOriginalExtension();
        $thumbName = $trial_id.'.'.$cat_img->getClientOriginalExtension();
        $cat_img->move($thumb, $thumbName);

        if ($request->hasFile('book')) {
            //print_r($request->book);
            foreach ($request->file('book') as $tribook) {
                $bookName = $tribook->getClientOriginalName().'.'.$tribook->getClientOriginalExtension();
                $tribook->move($book, $bookName);
            }
            /*$bookName = $request['book_title'].'.'.$prod_book->getClientOriginalExtension();
                $prod_book->move($book, $bookName);*/
        }

        $trial = Trialbooks::find($trial_id);
        $trial->thumb_img = $thumbName;
        $trial->pdf = 'trial_'.$trial_id;
        $trial->save();

        $message = "Trial Book ".$request['book_title']." added Succesfully ";
        Session::flash('message', $message); 
        return redirect('admin/add-trial-books');
    }

    public function createCategory($request)
    {
        
        // print_r($request['cat_banner']->getClientOriginalExtension());exit;
        $base_url = "/resources/img/".$request['db_category'];
        // dd($request,'Test',$base_url);
        DB::table('categories')->insert(
            ['series_name' => $request['cat_name'], 'series_table_name' => $request['db_category'],'series_desc' => $request['description'], 'age_group' => $request['age_group'], 'banner_img' => $request['cat_banner']]
        );  
        //DB::getPdo()->lastInsertId()
        $img = storage_path("app/public/uploads/img");
        if(!file_exists($img)){
            mkdir($img);
        }
        $cat_image = $img."/".$request['db_category'];
        if(!file_exists($cat_image)){
            mkdir($cat_image);
        }

        $cat_img = $request['cat_banner'];

        $fileName = $request['db_category'].'.'.$cat_img->getClientOriginalExtension();
        $cat_img->move($cat_image, $fileName);


        //mkdir(storage_path("/uploads/img/".$request['db_category']), 0770);
        return true;
    }

    public function insertBookToTable(Request $request){
        $id = $request->input('book_category');

        //$cat_table_name = DB::table('categories')->where('id', $id)->pluck('series_table_name');
        $cat_table_name = DB::table('categories')->where('id', $id)->select('series_table_name','series_name')->first();
        //dd($request->all(),$cat_table_name);
        DB::table($cat_table_name->series_table_name)->insert(
            [
                'book_title' => $request['book_title'], 
                // 'book_path' => $request['book'], 
                'book_path' => 'book_'.$request['sku'].'.'.$request['book']->getClientOriginalExtension(),
                'thumb_img' => 'thumb_'.$request['sku'].'.'.$request['prod_thumb']->getClientOriginalExtension(), 
                'product_img' => $request['prod_img'], 
                'product_details' => $request['prod_details'],
                'actual_price' => $request['actual_price'], 
                'offer_price' => $request['offer_price'], 
                'sale' => $request['sale'], 
                'in_stock' => $request['in_stock'], 
                'sku' => $request['sku'], 
                // 'categories' => $request['categories'], 
                // 'tags' => $request['tags'],
                'isbn' => $request['isbn'],
                'description' => $request['desc'], 
                'additional_info' => $request['add_info'], 
                'categories_id' => $request['book_category'],
                // 'review' => $request['review']
                'product_attach' => $request['attach'], 
                'review' => 0
            ]
        );

        $noOfBooks = DB::table($cat_table_name->series_table_name)->get();
        $addNOB = DB::table('categories')->where('id', $id)->update(
            [
                'no_of_books' => count($noOfBooks)
            ]
        );
        
        // dd(count($noOfBooks), $id, DB::table('categories')->where('id', $id)->get());

        $cat_image = storage_path("app/public/uploads/img/".$cat_table_name->series_table_name);
        // if(!file_exists($img)){
        //     mkdir($img);
        // }
        // $cat_image = $img."/".$request['db_category'];
        // if(!file_exists($cat_image)){
        //     mkdir($cat_image);
        // }

        $thumb = $cat_image.'/thumb';
        if(!file_exists($thumb)){
            mkdir($thumb);
        }
        
        $book = $cat_image.'/books';
        if(!file_exists($book)){
            mkdir($book);
        }

        $cat_img = $request['prod_thumb'];
        $prod_book = $request['book'];

        $fileName = 'thumb_'.$request['sku'].'.'.$cat_img->getClientOriginalExtension();
        $cat_img->move($thumb, $fileName);

        $bookName = 'book_'.$request['sku'].'.'.$prod_book->getClientOriginalExtension();
        $prod_book->move($book, $bookName);

        $message = "Book added to category " . $cat_table_name->series_name;
        Session::flash('message', $message); 
        return redirect('admin/add-books');
    }


    public function listBlog()
    {
        $blog = Blog::all();        
        return view('adminBlogPage',compact('blog'));
    }
    public function listComments()
    {
        $comment = BlogComments::join('blog','blogcomments.post_id','blog.id')
                    ->select('blogcomments.*','blog.title as title')
                    ->where('comment_status',0)
					->orderBy('blogcomments.id','DESC')
                    ->get();        
        return view('adminCommentPage',compact('comment'));
    }
    //commentConfirmation
    public function commentConfirmation(Request $request)
    {
        //print_r($_POST['commentid']);
        /* Log::info(Input::all());
        exit; */
        $comment = BlogComments::find($request->commentid);
        $comment->comment_status = $request->mystatus;
        $comment->save();
        return response()->json(['success'=>'Comment Deleted Successfully']);
    }
    public function createPost(Request $request){
        // dd($request->all(), "Test");
       
        DB::table('blog')->insert(
            [
                'title' => $request['blog_title'], 
                'blog_content' => $request['summary-ckeditor'], 
                'created_by' => $request['author'], 
                'categories' => $request['add_categories'],
                'tags' => $request['add_tags'],
                'slug' => preg_replace('/[^A-Za-z0-9\-]/','', strtolower(str_ireplace(' ', '-', $request['blog_title'])))
                // 'updated_on' => $request['sale']
            ]
        );

        $message = "Post Created Succesfully!!";
        Session::flash('message', $message); 
        return redirect('admin/blog');
    }
    
    public function deletePost(Request $request){
        // dd($request->all(), "Test");
        $id = $request['delete_post'];
        // DB::table('blog')->delete();
        DB::table('blog')->where('id', $id)->delete();
        return redirect('admin/blog');
    }
    public function viewBooksByCategory(Request $request) {
        $categories = Categories::all();  
        $selectedCategory = Categories::where('id', $request['book_category'])->first(); 
        $getBooksByCategory = DB::table($selectedCategory->series_table_name)->get();
        // dd($request->all(), $selectedCategory->series_name, $getBooksByCategory);  
        Session::put('booksByCategory', $getBooksByCategory);  
        return view('adminViewAllBooks',compact('categories', 'selectedCategory', 'getBooksByCategory'));
    }
    public function viewAllBooks(Request $request) {
        // dd($request->all());
        $categories = Categories::all();        
        return view('adminViewAllBooks',compact('categories'));
    }
    public function editBook(Request $request) {
        $getTableName = explode('/', $request->path());
        $getBook = DB::table($getTableName[3])
                    ->where('id', $getTableName[2])
                    ->first();
        $category = Categories::where('series_table_name', $getTableName[3])->first();
        // dd($getBook, $category, 'Test');
        return view('adminEditBook',compact('category', 'getBook'));
    }
    public function deleteBook(Request $request) {
        // dd($request->path());
        $categories = Categories::all();        
        $getTableName = explode('/', $request->path());
        $getBook = DB::table($getTableName[3])
                    ->where('id', $getTableName[2])
                    ->first();
        DB::table($getTableName[3])
        ->where('id', $getTableName[2])
        ->delete();
        
        // dd($getBook->book_title, 'Test');
        $message = $getBook->book_title . " Deleted!! ";
        Session::flash('itemDeleted', $message);
        // return view('adminViewAllBooks',compact('categories'));
        return redirect('admin/view-all-books');
    }
    public function updateBook(Request $request){
        try{
            // dd($request->all());
            DB::table($request['book_category'])->where('id', $request['book_id'])->update(
                [
                    'book_title' => $request['book_title'],
                    'product_details' => $request['prod_details'],
                    'actual_price' => $request['actual_price'], 
                    'offer_price' => $request['offer_price'], 
                    'sale' => $request['sale'], 
                    'in_stock' => $request['in_stock'], 
                    'sku' => $request['sku'], 
                    'categories' => $request['categories'], 
                    'tags' => $request['tags'],
                    'description' => $request['desc'], 
                    'additional_info' => $request['add_info'], 
                    // 'categories_id' => $request['book_category'],
                    // 'review' => $request['review']
                    'review' => 0
                ]
            );
            $message = $request['book_title'] . " Updated Succefully!! ";
            Session::flash('updateBook', $message); 
            return redirect('admin/view-all-books');
        }
        catch(\Exception $e){
            dd($e);
        }
    }

    public function alluser(Request $request){
        $tables = array();
        $tables[] = DB::table('users')->get(); 
        return view('adminAlluser',compact('tables'));
    }

    public function couponsList() {
        $coupons = Coupon::orderBy('id', 'DESC')->get();
        return view('adminCouponList',compact('coupons'));
    }

    public function getCouponCreate() {
        return view('adminAddCoupon');
    }

    public function postCouponStore(Request $request) {
        $request->validate([
            'coupon' => 'required|max:255|unique:coupons,coupon'
        ]);

        $coupon = new Coupon;
        $coupon->coupon = $request->coupon;
        $coupon->save();
        return redirect('admin/coupon')->with('success', 'The coupon has been added successfully!');
    }

    public function couponDelete($id = null) {
        $coupon = Coupon::find($id);
        $coupon->delete();
        return redirect('admin/coupon')->with('success', 'The coupon has been deleted successfully!');
    }
	public function listBookList()
    {
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
                   /*  dd($books);
                    exit; */
                    $books2 = '';
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
                exit;  */ 
        }

        $box_books = UserBoxBook::join('users', 'users.id', 'user_box_books.user_id')->select('user_box_books.*', 'users.name')->get();
        foreach ($box_books as $box_book) {               
            $pros = json_decode($box_book->product_details, true);
			if(isset($pros['skus']) && isset($pros['cats'])) {
                $book_list = array_combine($pros['skus'], $pros['cats']);
                $bookss = [];
                foreach($book_list as $key => $val) {
                    $cat = Categories::find($val);
                    $bookss[] = DB::table($cat->series_table_name)->where('sku', $key)->value('book_title');
                }
                $box_book->books = implode(', ', $bookss);
			}
        }
        //$book2='';
        return view('adminBookListPage',compact('books2', 'box_books'));
    }

    public function postBookDeliver(Request $request) {
        if($request->book_type == 2) {
            UserBoxBook::where('id', $request->book_id)->update(['is_delivered' => 1]);
        } elseif($request->book_type == 1) {
            DB::table('user_books')->where('id', $request->book_id)->update(['is_delivered' => 1]);
        }
        return response()->json(['status' => 1]);
    }

    public function getOrdersList(Request $request) {
        $orders = Order::/*join('users', 'users.id', '=', 'user_id')->*/OrderBy('orders.id', 'DESC')->get();
        return view('adminOrdersList',compact('orders'));
    }

    public function getOrderDetails($id = null) {
        $order = Order::where('id', $id)->first();
        /*$orders = Order::join('users', 'users.id', '=', 'user_id')->join('order_details', 'order_details.ord_id', '=', 'orders.id')->where('orders.id', $id)->OrderBy('order_details.id', 'DESC')->get();*/

        $getItems = DB::table('order_details as c')
        ->select('c.id','c.sku', 'c.book_title', 'c.price','c.total_price', 'c.qty', 'cat.series_table_name', 'attach', 'cart_attach','cart_attach_text')
        ->join('categories as cat','c.category_id','cat.id')
        ->where('ord_id', $id) 
        ->get();
           
        $orders = $getTable = [];$total=0;
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
        return view('adminOrderDetails',compact('order', 'orders'));
    }

    public function orderShipStatus(Request $request) {
        $ord = Order::find($request->order_id);
        $ord->ship_status = $request->status;
        if($ord->save())
            return response()->json(['status' => 1]);
    }

    public function getPopupOrderDetails(Request $request) {
        if($request->order_id != '') {
            $order = Order::find($request->order_id);

            $getItems = DB::table('order_details as c')
            ->select('c.id','c.sku', 'c.book_title', 'c.price','c.total_price', 'c.qty', 'cat.series_table_name', 'attach', 'cart_attach','cart_attach_text')
            ->join('categories as cat','c.category_id','cat.id')
            ->where('ord_id', $request->order_id) 
            ->get();
               
            $orders = $getTable = [];$total=0;
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

            $html = view('includes/adminOrder',compact('order', 'orders'))->render();
            return response()->json(['status' => 1, 'html' => $html]);
        }
    }
}
