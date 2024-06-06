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
     * Display the student information by name, gender, school name, postal and postal code 
     * @urlParam name string required The school name. Example: sekolah citra berkat
     * @response array{success:bool, message: string, data: array{id:int, name: string, gender_id: int, height: int, school_id: int, address: string, postal_code: int, school_type_id: int, phone_number: string, updated_at: date, created_at: date, school: array{id: int, name: string}, gender: array{id: int, gender: string}}[]}

     * @group Student
     * @authenticated
     */

     public function index(Request $request)
    {
        //
        $student = Student::query();
        $name = $request->query("name");
        $tingkat_sekolah = $request->query("tingkat_sekolah");
        $school_name = $request->query("nama_sekolah");
        $gender = $request->query("gender");
        
            // Apply conditions based on parameters
        if ($name != null) {
            $student->where('name', 'like', '%' . $name . '%');
        }

        

      
        if ( $gender != null) {
        $student = $student->whereHas('gender', function (Builder $query) use ($gender) {
            
                $query->where("gender", $gender);
            
           
        });
        
        if($school_name != null)
            $student = $student->whereHas("school", function (Builder $query) use ($school_name) {
            
            
                $query->where('name', 'like', '%' . $school_name . '%');
            
            });
        }

        if($tingkat_sekolah != null){
            
            $student = $student->whereHas("school", function (Builder $query) use ($tingkat_sekolah) {
            
            
                $query->whereHas("schoolType", function(Builder $queryChild) use ($tingkat_sekolah){
                    $queryChild->where('name', 'like', '%' . $tingkat_sekolah . '%');
                });
            
            });
        }

        $student = $student->with("school.schoolType");


        return new RequestResource(true, "success", $student->get());
        
    }
    /**
     * Display the student information by id
     
     * @response array{success:bool, message: string, data: array{id:int, name: string, gender_id: int, height: int, school_id: int, address: string, postal_code: int, school_type_id: int, phone_number: string, updated_at: date, created_at: date, school: array{id: int, name: string}, gender: array{id: int, gender: string}}}

     * @group Student
     
     */
    public function findById($id)
    {
        //
        
        return new RequestResource(true, "success", Student::find($id));
        
    }

    /**
     * Display all student phone numbers
     * @response array{success:bool, message: string, data: array{id:int, name: string, phone_number: string, school_type: array{id: int, name: string}}[]}
     * @group Student
     * @authenticated
     */

     public function getAllStudentPhoneNumbers(Request $request)
     {
         //
   
        
         return new RequestResource(true, "success", Student::select("id", "name", "phone_number", "gender_id", "school_id")->get());
     }

     /**
     * Display all student addresses
     * @response array{success:bool, message: string, data: array{id:int, name: string, phone_number: string, school_type: array{id: int, name: string}}[]}
     * @group Student
     * @authenticated
     */

     public function getAllStudentAddresses(Request $request    )
     {
         //
   
        
         return new RequestResource(true, "success", Student::select("id", "name", "address", "gender_id", "school_id")->get());
     }

 

}
