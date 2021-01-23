<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\bukuModel;

class SearchController extends Controller
{
    function index(Request $request)
    {
        $books = bukuModel::where('nama', 'like', '%' . $request->search . '%')->orWhere('penulis', 'like', '%' . $request->search . '%')->orWhere('penerbit', 'like', '%' . $request->search . '%')->orWhere('deskripsi', 'like', '%' . $request->search . '%')->simplePaginate(5);

        // dd($books);
        return view('buku', compact('books'));
    }
}
