<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ImportJobNotification extends Model
{
    protected $fillable = [
        'user_id',
        'excel_file',
        'message_type',
        'message',
        'status'
    ];
}
