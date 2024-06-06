<?php

namespace App\Http\Controllers;

use App\Models\Teacher;
use Illuminate\Http\Request;
use App\Http\Resources\RequestResource;
use Illuminate\Contracts\Database\Eloquent\Builder;

class TeacherController extends Controller
{
    /**
     * Display the teacher information by name, gender, school name, postal and postal code 
     * @urlParam name string required The school name. Example: sekolah citra berkat
     * @response array{success:bool, message: string, data: array{id:int, name: string, gender_id: int, school_id: int, address: string, postal_code: int, school_type_id: int, phone_number: string, updated_at: date, created_at: date, school: array{id: int, name: string}, gender: array{id: int, gender: string}}[]}

 
     * @authenticated
     */
    public function index(Request $request)
    {
        //
        $teacher = Teacher::query();
        $name = $request->query("name");
        $tingkat_sekolah = $request->query("tingkat_sekolah");
        $school_name = $request->query("nama_sekolah");
        $gender = $request->query("gender");
       
            // Apply conditions based on parameters
        if ($name != null) {
            $teacher->where('name', 'like', '%' . $name . '%');
        }

      
        if ( $gender != null) {
        $teacher = $teacher->whereHas('gender', function (Builder $query) use ($gender) {
            
                $query->where('gender', 'like', '%' . $gender . '%');
            
           
        });
        }
        if($school_name != null){ 
            $teacher = $teacher->whereHas("school", function (Builder $query) use ($school_name) {
            
            
                $query->where('name', 'like', '%' . $school_name . '%');
            
            });
        }

        if($tingkat_sekolah != null){
           
            $teacher = $teacher->whereHas("school", function (Builder $query) use ($tingkat_sekolah) {
            
            
                $query->whereHas("schoolType", function(Builder $queryChild) use ($tingkat_sekolah){
                    $queryChild->where('name', 'like', '%' . $tingkat_sekolah . '%');
                });
            
            });
        }

        $teacher = $teacher->with("school.schoolType");
        return new RequestResource(true, "success", $teacher->get());
        
    }

    /**
     * Display the teacher information by id
     
     * @response array{success:bool, message: string, data: array{id:int, name: string, gender_id: int, school_id: int, address: string, postal_code: int, school_type_id: int, phone_number: string, updated_at: date, created_at: date, school: array{id: int, name: string}, gender: array{id: int, gender: string}}}

     
     * @authenticated
     */
    public function findById($id)
    {
        
        return new RequestResource(true, "success", Teacher::find($id));
        
    }

    /**
     * Display all teacher phone numbers
     * @response array{success:bool, message: string, data: array{id:int, name: string, phone_number: string, school_type: array{id: int, name: string}}[]}
     * @group Teacher
     * @authenticated
     */

     public function getAllTeacherPhoneNumbers()
     {
         //
   
        
         return new RequestResource(true, "success", Teacher::select("id", "name", "phone_number", "school_id", "gender_id")->get());
     }

     /**
     * Display all teacher addresses
     * @response array{success:bool, message: string, data: array{id:int, name: string, phone_number: string, school_type: array{id: int, name: string}}[]}
     * @group Teacher
     * @authenticated
     */

     public function getAllTeacherAddresses()
     {
         //
   
        
         return new RequestResource(true, "success", Teacher::select("id", "name", "address", "school_id", "gender_id")->get());
     }
}
