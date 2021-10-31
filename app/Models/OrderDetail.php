<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class OrderDetail extends Model
{
    // protected $guarded  = array('od_id');
    protected $table = 'order_details';
    public $timestamps = true;

    /*protected $primaryKey = 'od_id';
    const CREATED_AT = 'od_created_at';
    const UPDATED_AT = 'od_updated_at';*/
}