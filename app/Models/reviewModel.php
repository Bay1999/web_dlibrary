<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class reviewModel extends Model
{
    protected $table = "review";

    protected $fillable = [
        'id',
        'buku_id',
        'user',
        'commentar',
        'rate'
    ];
}
