<?php

namespace App\Http\Controllers;

use App\Models\kategoriModel;
use Illuminate\Http\Request;

class kategoriController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $kategoris = kategoriModel::latest()->simplePaginate(5);
        return view('kategori.index', compact('kategoris'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('kategori.add-kategori');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'kategori' => 'required',
            'img' => 'mimes:jpeg,png,jpg,gif,svg|max:10240',
            // 'pdf' => 'required',
            // 'pdf.*' => 'required'
            // 'img' => 'required',
        ]);

        $imageName = time() . '.' . $request->img->extension();
        $request->img->move('img/kategori/', $imageName);

        $tambah = kategoriModel::create([
            'nama' => $request->kategori,
            'img' => 'img/kategori/' . $imageName
        ]);

        if ($tambah) {
            return redirect('kategori');
        } else {
            echo 'gak tersimpan';
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\kategoriModel  $kategoriModel
     * @return \Illuminate\Http\Response
     */
    public function show(kategoriModel $kategoriModel)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\kategoriModel  $kategoriModel
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $kategoriDetail = kategoriModel::find($id);

        return view('kategori.edit-kategori', compact('kategoriDetail'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\kategoriModel  $kategoriModel
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'kategori' => 'required',
            'img' => 'mimes:jpeg,png,jpg,gif,svg|max:10240',
            // 'pdf' => 'required',
            // 'pdf.*' => 'required'
            // 'img' => 'required',
        ]);

        $kategori = kategoriModel::find($id);

        if ($request->file('img') == "") {
            $kategori->update([
                'nama' => $request->kategori
            ]);
        } else {

            @unlink($kategori->img);

            $imageName = time() . '.' . $request->img->extension();
            $request->img->move('img/kategori/', $imageName);

            $kategori->update([
                'nama' => $request->kategori,
                'img' => 'img/kategori/' . $imageName
            ]);
        }

        return redirect('kategori');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\kategoriModel  $kategoriModel
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $kategori = kategoriModel::find($id);


        if (file_exists($kategori->img)) {
            echo 'ada';
            @unlink($kategori->img);
        }

        // echo 'terhapus';
        // die();

        $kategori->delete();

        return redirect()->route('kategori.index')
            ->with('success', 'Post deleted successfully');
    }
}
