<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class readerModel extends Model
{
    protected $table = "reader";

    protected $fillable = [
        'id',
        'buku_id',
        'created_at',
        'updated_at'
    ];
}
