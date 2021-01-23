<?php

namespace App\Http\Controllers;

use App\Models\bukuModel;
use App\Models\kategoriModel;
use App\Models\readerModel;
use App\Models\reviewModel;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

class dashboardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $buku = bukuModel::all();
        // $bukuCount = $buku->count();

        $kategori = kategoriModel::all();
        // $kategoriCount = $kategori->count();
        // config(['app.locale' => 'id']);
        // \Carbon\Carbon::setLocale('id');
        $date = Carbon::now();

        $readBulan = readerModel::whereMonth('created_at', $date->format('m'));
        $reviewBulan = reviewModel::whereMonth('created_at', $date->format('m'));
        // $readBulanCount = 
        $monthChart = array();
        $dataChart = array();
        for ($i = 0; $i < 5; $i++) {
            $monthChart[] =  $date->subMonths($i)->isoFormat('MMMM');
            $dataChart[] = readerModel::whereMonth('created_at', $date->format('m'))->count();
            // echo $data->count();
            $date = Carbon::now();
        }
        $chart = array(
            'month' => $monthChart,
            'data' => $dataChart,
        );

        $mostBook = readerModel::select('buku_id')
            ->groupBy('buku_id')
            ->orderByRaw('COUNT(*) DESC')
            ->take(1)
            ->get();

        foreach ($mostBook as $book) {
            $bukuTer = bukuModel::find($book['buku_id']);
        }

        // dd($bukuTer);

        $reading = readerModel::select('buku_id')
            ->selectRaw('COUNT(*) AS count')
            ->groupBy('buku_id')
            ->orderByDesc('count')
            ->limit(5)
            ->get();

        // $mostRead = array();

        foreach ($reading as $read) {
            $buku = bukuModel::find($read['buku_id']);
            $mostRead[] = ([
                'buku_id' => $buku->id,
                'buku' => $buku->nama,
                'jumlah' => $read->count
            ]);
            // echo $read->buku_id;
            // echo '<br>';
            // echo $read->count;
            // echo '<br>';
        }

        // dd($mostRead);
        $countData = array(
            'bukuCount' => $buku->count(),
            'kategoriCount' => $kategori->count(),
            'readBulanCount' => $readBulan->count(),
            'reviewBulanCount' => $reviewBulan->count(),
            'bukuTer' => $bukuTer,
            'mostRead' => $mostRead,
            // 'kode' => 'kode'
        );
        return view('dashboard', compact('countData', 'chart'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
    public function edit(bukuModel $bukuModel)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\bukuModel  $bukuModel
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, bukuModel $bukuModel)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\bukuModel  $bukuModel
     * @return \Illuminate\Http\Response
     */
    public function destroy(bukuModel $bukuModel)
    {
        //
    }
}
