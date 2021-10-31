<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    // protected $guarded  = array('ord_id');
    protected $table = 'orders';
    public $timestamps = true;

    /*protected $primaryKey = 'ord_id';
    const CREATED_AT = 'ord_created_at';
    const UPDATED_AT = 'ord_updated_at';*/
}