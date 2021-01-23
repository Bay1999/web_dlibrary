<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class bukuModel extends Model
{
    protected $table = "buku";

    protected $fillable = [
        'id',
        'kategori_id',
        'penulis',
        'penerbit',
        'nama',
        'deskripsi',
        'cover',
        'bab',
        'pdf'
    ];
}
