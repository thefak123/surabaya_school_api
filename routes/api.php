<?php

use App\Http\Controllers\SchoolController;
use App\Http\Middleware\EnsureAPIKeyIsValid;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

Route::get('/schools', [SchoolController::class, "index"])->middleware(EnsureAPIKeyIsValid::class);
Route::get('/schools/name/{name}', [SchoolController::class, "findByName"]);
Route::get('/schools/postal/{postal_code}', [SchoolController::class, "findByPostalCode"]);
Route::get('/schools/elementary', [SchoolController::class, "findAllSDSchools"]);
Route::get('/schools/elementary/{name}', [SchoolController::class, "findSDSchoolByName"]);
Route::get('/schools/elementary/{postal_code}', [SchoolController::class, "findSDSchoolByPostalCode"]);
Route::get('/schools/junior', [SchoolController::class, "findAllSMPSchools"]);
Route::get('/schools/junior/{name}', [SchoolController::class, "findSMPSchoolByName"]);
Route::get('/schools/junior/{postal_code}', [SchoolController::class, "findSMPSchoolByPostalCode"]);
Route::get('/schools/senior', [SchoolController::class, "findAllSMASchools"]);
Route::get('/schools/senior/{name}', [SchoolController::class, "findSMASchoolByName"]);
Route::get('/schools/senior/{postal_code}', [SchoolController::class, "findSMASchoolByPostalCode"]);