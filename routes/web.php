<?php

use App\Models\BuyerBidAdjustment;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('test', function() {
    return BuyerBidAdjustment::orderByRaw(
        'case when typeable_type = "App\\Models\\VehicleModel" then 1 else 2 end'
    )
        ->orderByDesc('id')
        ->toRawSql();
});