<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\bukuModel;
use Illuminate\Support\Facades\Storage;


class bukuController extends Controller
{
    public function index()
    {
        $books = bukuModel::latest()->simplePaginate(2);
        return view('buku', compact('books'));
    }
}
