<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Models\kategoriModel;
use App\Models\bukuModel;
use App\Models\readerModel;
use App\Models\reviewModel;

class apiController extends Controller
{
    public function kategori()
    {
        return response()->json(kategoriModel::get(), 200);
    }

    public function buku()
    {
        return response()->json(bukuModel::latest()->get(), 200);
    }

    public function listbuku($id)
    {
        if ($id == "0") {
            return response()->json(bukuModel::latest()->get(), 200);
        } else {
            //$list = DB::table('buku')->where('kategori_id', $id)->get();
            $list = bukuModel::where('kategori_id', $id)->get();
            return response()->json($list, 200);
        }
    }

    public function search($search)
    {
        // $list = DB::table('buku')->where('nama', 'like', '%' . $search . '%')->get();
        $list = bukuModel::where('nama', 'like', '%' . $search .'%')->get();
        return response()->json($list, 200);
    }

    public function getDetailBuku($idBuku)
    {
        $detailBuku = DB::table('buku')->where('id', $idBuku)->first();
        return response()->json($detailBuku, 200);
    }

    public function getListBookmark($search)
    {
        // $list = DB::table('buku')->where('id', $search)->get();
        $list = bukuModel::where('id', $search)->get();
        return response()->json($list, 200);
    }

    public function addReview(Request $request)
    {
        $bukuId = $request->idBuku;
        $user = $request->user;
        $comment = $request->comment;
        $rate = $request->rate;
        // $bukuId = 1;
        // $user = 'bayu';
        // $comment = 'lol';
        // $rate = 2.0;

        $data = DB::table('review')->where('buku_id', $bukuId)->where('user', $user)->first();

        if ($data == null) {
            reviewModel::create([
                'buku_id' => $bukuId,
                'user' => $user,
                'commentar' => $comment,
                'rate' => $rate,
            ]);
            return response()->json('', 201);
        } else {
            $update = DB::table('review')
                ->where('buku_id', $bukuId)
                ->where('user', $user)
                ->update([
                    'buku_id' => $bukuId,
                    'user' => $user,
                    'commentar' => $comment,
                    'rate' => $rate,
                ]);
        }
    }

    public function review(Request $req)
    {
        $idBuku = $req->buku_id;
        $user = $req->user;

        // dd($req);

        $data1 = DB::table('review')->where('buku_id', $idBuku)->where('user', $user)->first();
        $data = reviewModel::where('buku_id', $idBuku)->where('user', $user)->first();

        // return json_decode($data);
        // $data->rate = number_format($data->rate, 1);
        $data->rate = 0;
        $data->rate += $data1->rate;
        // if(is_int($data->rate)){
            
        // }
        return response()->json($data, 200);
    }

    public function allReview($idBuku)
    {
        $total = 0;
        $rate = 0;
        // $data = DB::table('review')->where('buku_id', $idBuku)->get();
        $data = reviewModel::where('buku_id', $idBuku)->get();
        $jumData = count($data);
        foreach ($data as $key) {
            $total += $key->rate;
            $rate += $key->rate;
            $key->rate = $rate;
            $rate = 0;
            
            // $key->rate += $rate->rate;
        }
        $rating = $total / $jumData;
        
        // $ratingDouble = number_format($rating, 2);
        return response()->json([
            'data' => $data,
            'rating' => round($rating, 1)
        ], 200);
    }

    public function addReader(Request $req)
    {
        readerModel::create([
            'buku_id' => $req->buku_id
        ]);
        return response()->json('', 201);
    }

    public function getReader($buku_id)
    {
        $reader = DB::table('reader')->where('buku_id', $buku_id)->count();
        return response()->json($reader, 200);
    }
    
    
    //tyas
    
    function dataBanjir()
    {
        $dataKecamatan = DB::table('menus')->where('namabencana', 'like', '%banjir%')->select('kecamatan')->distinct()->get();

        return response()->json($dataKecamatan, 200);
    }

    function dataKekeringan()
    {
        $dataKecamatan = DB::table('menus')->where('namabencana', 'like', '%kekeringan%')->select('kecamatan')->distinct()->get();

        return response()->json($dataKecamatan, 200);
    }

    function dataKecamatan(Request $request)
    {
        $kecamatan = DB::table('menus')->where('kecamatan', $request->kec)->where('namabencana', 'like', '%' . $request->bencana . '%')->get();

        return response()->json($kecamatan, 201);
    }
    
    function buatPengaduan(Request $request)
    {
        $pengaduan = DB::table('pengaduan')->insert([
            'judul' => $request->judul,
            'pengaduan' => $request->pengaduan,
            'lokasi' => $request->lokasi
        ]);
        if($pengaduan){
        return response()->json('success', 201);    
        } else {
            return response()->json('eror');
        }
        
    }
    
    function getPengaduan(){
        $data = DB::table('pengaduan')->get();

        return response()->json($data, 200);
    }
    
    function pencegahan(Request $request)
    {
        $pencegahan = DB::table('sopbencanas')->where('namasopbencana', 'like', '%' . $request->bencana . '%')->where('namasopbencana', 'like', '%' . $request->time . '%')->get();
        // $list = DB::table('buku')->where('nama', 'like', '%' . $search . '%')->get();

        return response()->json($pencegahan, 200);
    }
    
    function kuis()
    {
        $kuis = DB::table('kuiss')->inRandomOrder()->limit(10)->get();
        // $kuis = DB::table('kuiss')->get();
        // User::inRandomOrder()->limit(5)->get();

        // shuffle($kuis);
        return response()->json($kuis, 200);
    }
}
