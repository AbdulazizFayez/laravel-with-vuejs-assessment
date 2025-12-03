<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductMasterList extends Model
{
    protected $fillable = [
        'product_id',
        'types',
        'brand',
        'model',
        'capacity',
        'quantity'
    ];
}
