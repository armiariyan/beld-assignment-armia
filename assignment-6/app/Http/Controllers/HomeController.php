<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{

        public function getData(Request $request) {
        $keyword = $request->query('keyword');

        $query = DB::select("SELECT * FROM products WHERE name LIKE '%$keyword%' and price LIKE '%$keyword%'");

        return response()->json([
            'data' => $query
        ]);
    }

}
