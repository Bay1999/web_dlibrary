<?php

namespace App\Http\Controllers;

use App\Models\bukuModel;
use App\Models\kategoriModel;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Storage;

class bookController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $books = bukuModel::latest()->simplePaginate(5);
        return view('buku', compact('books'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = kategoriModel::all(['id', 'nama']);
        return view('add-buku', compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // echo "ini store";
        $request->validate([
            'judul' => 'required',
            'penulis' => 'required',
            'penerbit' => 'required',
            'kategori' => 'required',
            'deskripsi' => 'required',
            'img' => 'required|mimes:jpeg,png,jpg,gif,svg|max:10240',
            // 'img' => 'required',
        ]);

        $imageName = time() . '.' . $request->img->extension();
        $request->img->move('img/cover/', $imageName);

        $babs = [];
        $pdfs = [];

        foreach ($request->bab as $key) {
            if ($key != null) {
                $babs[] = $key;
            }
        }

        if ($request->hasfile('pdf')) {
            foreach ($request->file('pdf') as $file) {
                $name = time() . rand(1, 100);
                $file->move('pdf/', $name . '.' . $file->extension());
                $pdfs[] = $name;
            }
        }

        // $jsonBab = json_encode($babs);
        // $jsonPdf = json_encode($pdfs);

        // var_dump(json_encode($babs));
        // echo '<br>';
        // var_dump(json_encode($pdfs));
        // echo '<br>';
        // var_dump($request->bab);
        // echo '<br>';
        // echo 'ini store';
        // die();

        $tambah = bukuModel::create([
            'nama' => $request->judul,
            'kategori_id' => $request->kategori,
            'penulis' => $request->penulis,
            'penerbit' => $request->penerbit,
            'deskripsi' => $request->deskripsi,
            'cover' => 'img/cover/' . $imageName,
            'bab' => json_encode($babs),
            'pdf' => json_encode($pdfs)
        ]);

        return redirect('buku');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\bukuModel  $bukuModel
     * @return \Illuminate\Http\Response
     */
    public function show(bukuModel $bukuModel)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\bukuModel  $bukuModel
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $bukuDetail = bukuModel::find($id);
        $categories = kategoriModel::all(['id', 'nama']);

        return view('edit-buku', compact('bukuDetail', 'categories'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\bukuModel  $bukuModel
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

        // $this->validate($request, [
        //     // 'bab' => 'required',
        //     // 'bab.*' => 'required',
        //     'pdf' => 'required',
        //     'pdf.*' => 'required'
        // ]);
        $request->validate([
            'judul' => 'required',
            'penulis' => 'required',
            'penerbit' => 'required',
            'kategori' => 'required',
            'deskripsi' => 'required',
            'img' => 'mimes:jpeg,png,jpg,gif,svg|max:10240',
            // 'pdf' => 'required',
            // 'pdf.*' => 'required'
            // 'img' => 'required',
        ]);

        $buku = bukuModel::find($id);

        if ($request->file('img') == "") {

            $buku->update([
                'nama' => $request->judul,
                'kategori_id' => $request->kategori,
                'penulis' => $request->penulis,
                'penerbit' => $request->penerbit,
                'deskripsi' => $request->deskripsi,
            ]);
        } else {

            //hapus old image
            // Storage::disk('local')->delete('public/blogs/' . $blog->image);
            @unlink($buku->cover);

            //upload new image
            $imageName = time() . '.' . $request->img->extension();
            $request->img->move('img/cover/', $imageName);


            $buku->update([
                'nama' => $request->judul,
                'kategori_id' => $request->kategori,
                'penulis' => $request->penulis,
                'penerbit' => $request->penerbit,
                'deskripsi' => $request->deskripsi,
                'cover' => 'img/cover/' . $imageName,
            ]);
        }

        if ($buku) {
            //redirect dengan pesan sukses
            return redirect('buku')->with(['success' => 'Data Berhasil Diupdate!']);

            // return redirect()->route('buku')->with(['success' => 'Data Berhasil Diupdate!']);
        } else {
            //redirect dengan pesan error
            return redirect('buku')->with(['error' => 'Data Gagal Diupdate!']);

            // return redirect()->route('buku')->with(['error' => 'Data Gagal Diupdate!']);
        }
        // echo 'ini update';
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\bukuModel  $bukuModel
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $bukuDetail = bukuModel::find($id);

        if($bukuDetail->pdf != null) {
            // var_dump(json_decode($bukuDetail->pdf));
            foreach (json_decode($bukuDetail->pdf) as $pdf) {
            // Storage::delete('pdf/' . $pdf);
            if (file_exists('pdf/' . $pdf .  '.pdf')) {
                echo 'ada';
                @unlink('pdf/' . $pdf . '.pdf');
            } else {
                echo 'tidak ada';
            }
        }
        }
        

        if (file_exists($bukuDetail->cover)) {
            echo 'ada';
            @unlink($bukuDetail->cover);
        }

        // die();

        $bukuDetail->delete();

        return redirect()->route('buku.index')
            ->with('success', 'Post deleted successfully');
    }
}
