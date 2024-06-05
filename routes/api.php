<?php

use App\Http\Controllers\SchoolController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\TeacherController;
use App\Http\Middleware\EnsureAPIKeyIsValid;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

// Penambahan middleware(EnsureAPIKeyIsValid::class); untuk melakukan pengecekan, jadi jika mau menjalankan Route::get('/schools', [SchoolController::class, "index"])->middleware(EnsureAPIKeyIsValid::class);
// Maka harus melewati proses middleware

Route::middleware([EnsureAPIKeyIsValid::class])->group(function () {
    Route::get('/schools', [SchoolController::class, "index"]);
    Route::get('/schools/{id}', [SchoolController::class, "findById"]);
    Route::get('/schools/info/phonenumbers', [SchoolController::class, "getPhoneNumbers"]);
    Route::get('/schools/info/address', [SchoolController::class, "getAllSchoolAddresses"]);
    
    Route::get('/students', [StudentController::class, "index"]);
    Route::get('/students/{id}', [StudentController::class, "findById"]);
    Route::get('/students/info/phonenumbers', [StudentController::class, "getAllStudentPhoneNumbers"]);
    Route::get('/students/info/address', [StudentController::class, "getAllStudentAddresses"]);
    
    Route::get('/teachers', [TeacherController::class, "index"]);
    Route::get('/teachers/{id}', [TeacherController::class, "findById"]);
    Route::get('/teachers/info/phonenumbers', [TeacherController::class, "getAllTeacherPhoneNumbers"]);
    Route::get('/teachers/info/address', [TeacherController::class, "getAllTeacherAddresses"]);
});

// Route::get('/schools/name/{name}', [SchoolController::class, "findByName"]);
// Route::get('/schools/postal/{postal_code}', [SchoolController::class, "findByPostalCode"]);
// Route::get('/schools/elementary', [SchoolController::class, "findAllSDSchools"]);
// Route::get('/schools/elementary/{name}', [SchoolController::class, "findSDSchoolByName"]);
// Route::get('/schools/elementary/{postal_code}', [SchoolController::class, "findSDSchoolByPostalCode"]);
// Route::get('/schools/junior', [SchoolController::class, "findAllSMPSchools"]);
// Route::get('/schools/junior/{name}', [SchoolController::class, "findSMPSchoolByName"]);
// Route::get('/schools/junior/{postal_code}', [SchoolController::class, "findSMPSchoolByPostalCode"]);
// Route::get('/schools/senior', [SchoolController::class, "findAllSMASchools"]);
// Route::get('/schools/senior/{name}', [SchoolController::class, "findSMASchoolByName"]);
// Route::get('/schools/senior/{postal_code}', [SchoolController::class, "findSMASchoolByPostalCode"]);