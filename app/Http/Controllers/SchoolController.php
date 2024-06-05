<?php

namespace App\Http\Controllers;

use App\Models\School;
use App\Http\Resources\RequestResource;
use App\Models\SchoolType;
use Illuminate\Http\Request;

class SchoolController extends Controller
{
    /**
     * Display all schools in surabaya by name, tingkat sekolah and postal code.
     * @response array{success:bool, message: string, data: array{id:int, name: string, address: string, postal_code: int, school_type_id: int, phone_number: string, updated_at: date, created_at: date, school_type: array{id: int, name: string}}[]}
     * @group School
     * @authenticated
     */
    
    
    public function index(Request $request)
    {
        //
        $schools = School::query();
        $name = $request->query("name");
        $tingkat_sekolah = $request->query("tingkat_sekolah");
        $postal_code = $request->query("postal_code");
            // Apply conditions based on parameters
        if ($name != null) {
            $schools->where("name", $name);
        }

        if ( $tingkat_sekolah != null) {
            $schoolTypeId = SchoolType::where("name", $tingkat_sekolah)->first();
            $schools->where("tingkat_sekolah", $schoolTypeId->id);
        }

        if ($postal_code != null) {
            $schools->where("postal_code", $postal_code);
        }

        $schools = $schools->with("schoolType")->get();
        return new RequestResource(true, "success", $schools);
    }

    /**
     * Display school by id
     * @response array{success:bool, message: string, data: array{id:int, name: string, address: string, postal_code: int, school_type_id: int, phone_number: string, updated_at: date, created_at: date, school_type: array{id: int, name: string}}}
     * @group School
     * @authenticated
     */

    public function findById($id)
    {
        //
        $schools = School::find($id);
        
        return new RequestResource(true, "success", $schools);
    }

    /**
     * Display all school phone numbers
     * @response array{success:bool, message: string, data: array{id:int, name: string, phone_number: string, school_type: array{id: int, name: string}}}
     * @group School
     * @authenticated
     */

     public function getPhoneNumbers()
     {
         //
        
        $schools = School::query()->select("id", "name", "phone_number", "school_type_id")->get();
        
        return new RequestResource(true, "success", $schools);
     }

     /**
     * Display all school addresses
     * @response array{success:bool, message: string, data: array{id:int, name: string, phone_number: string, school_type: array{id: int, name: string}}}
     * @group School
     * @authenticated
     */

     public function getAllSchoolAddresses()
     {
         //
   
         $schools = School::select("id", "name", "address", "school_type_id")->with("schoolType")->get();
         return new RequestResource(true, "success", $schools);
     }

    

  
    
}
