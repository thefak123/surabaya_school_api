<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Resources\RequestResource;
use App\Models\Student;
use Illuminate\Contracts\Database\Eloquent\Builder;

class StudentController extends Controller
{
    //

    /**
     * Display the student information by name
     * @urlParam name string required The school name. Example: sekolah citra berkat
     * @group Student
     * @authenticated
     */

     public function findByName(string $name)
     {
         //
         return new RequestResource(true, "success", Student::where("name", $name)->with("school")->with("gender")->first());
     }

     /**
     * Display the specified school in surabaya by name.
     * @urlParam name string required The school name. Example: sekolah citra berkat
     * @group Student
     * @authenticated
     */

     public function findBySchoolName(string $name)
     {
         
     }

}
