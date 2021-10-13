<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('/', fn() =>view('pages.homepage'))->name('home');
Route::get('/tentang-kami', fn() =>view('pages.tentang-kami'))->name('tentang-kami');
Route::get('/kontak-kami', fn() =>view('pages.kontak-kami'))->name('kontak-kami');
