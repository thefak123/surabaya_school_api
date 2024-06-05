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
            $teacher->where("name", $name);
        }

        


        $teacher = $teacher->with(['gender' => function (Builder $query) use ($gender) {
            if ( $gender != null) {
                $query->where("gender", $gender);
            }
           
        }])->with(["school" => function (Builder $query) use ($school_name, $tingkat_sekolah) {
            if ($school_name != null) {
                $query->where("name", $school_name);
            }
    
            if ( $tingkat_sekolah != null) {
                $query->with(["schoolType" => function(Builder $queryChild) use ($tingkat_sekolah){
                    $queryChild->where("name", $tingkat_sekolah);
                }]);
            }
           
        }])->get();
        return new RequestResource(true, "success", $teacher);
        
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
   
        
         return new RequestResource(true, "success", Teacher::select("id", "name", "phone_number", "school_id")->get());
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
   
        
         return new RequestResource(true, "success", Teacher::select("id", "name", "address", "school_id")->get());
     }
}
