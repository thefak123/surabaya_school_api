<?php

namespace App\Http\Controllers;

use App\Models\School;
use App\Http\Resources\RequestResource;
use Illuminate\Http\Request;

class SchoolController extends Controller
{
    /**
     * Display a listing of the school in Surabaya.
     * @group All Surabaya School
     * @authenticated
     */
    
    public function index()
    {
        //
        return new RequestResource(true, "success", School::all());
    }

    /**
     * Display the specified school in surabaya by name.
     * @urlParam name string required The school name. Example: sekolah citra berkat
     * @group All Surabaya School
     * @authenticated
     */

    public function findByName(string $name)
    {
        //
        return new RequestResource(true, "success", School::where("name", $name)->first());
    }

    /**
     * Display the specified school in surabaya by postal code.
     * @urlParam postal_code int required The school name. Example: 22312
     * @group All Surabaya School
     * @authenticated
     */

     public function findByPostalCode(string $postal_code)
     {
         //
         return new RequestResource(true, "success", School::where("postal_code", $postal_code)->first());
     }
    
     /**
     * Display all of elementary school in surabaya.
     
     * @group Surabaya Elementary School
     * @authenticated
     */

     public function findAllSDSchools()
     {
         
         return new RequestResource(true, "success", School::where("school_type", "SD")->get());
     }

       /**
     * Display the specified school in surabaya by name.
     * @urlParam name string required The school name. Example: sekolah citra berkat
     * @group Surabaya Elementary School
     * @authenticated
     */

    public function findSDSchoolByName(string $name)
    {
        //
        return new RequestResource(true, "success", School::where("school_type", "SD")->where("name", $name)->first());
    }

    /**
     * Display the specified school in surabaya by postal code.
     * @urlParam postal_code int required The school name. Example: 22312
     * @group Surabaya Elementary School
     * @authenticated
     */

     public function findSDSchoolByPostalCode(string $postal_code)
     {
         //
         return new RequestResource(true, "success", School::where("school_type", "SD")->where("postal_code", $postal_code)->first());
     }


     /**
     * Display all of junior high school in surabaya.
     
     * @group Surabaya Junior High School
     * @authenticated
     */

     public function findAllSMPSchools()
     {
         
         return new RequestResource(true, "success", School::where("school_type", "SMP")->get());
     }

     /**
     * Display the specified school in surabaya by name.
     * @urlParam name string required The school name. Example: sekolah citra berkat
     * @group Surabaya Junior High School
     * @authenticated
     */

    public function findSMPSchoolByName(string $name)
    {
        //
        return new RequestResource(true, "success", School::where("school_type", "SMP")->where("name", $name)->first());
    }

    /**
     * Display the specified school in surabaya by postal code.
     * @urlParam postal_code int required The school name. Example: 22312
     * @group Surabaya Junior High School
     * @authenticated
     */

     public function findSMPSchoolByPostalCode(string $postal_code)
     {
         //
         return new RequestResource(true, "success", School::where("school_type", "SMP")->where("postal_code", $postal_code)->first());
     }

     /**
     * Display all of Senior High School in surabaya.
     
     * @group Surabaya Senior High School
     * @authenticated
     */

     public function findAllSMASchools()
     {
         
         return new RequestResource(true, "success", School::where("school_type", "SMA")->where("school_type", "SMA")->get());
     }

     /**
     * Display the specified school in surabaya by name.
     * @urlParam name string required The school name. Example: sekolah citra berkat
     * @group Surabaya Senior High School
     * @authenticated
     */

    public function findSMASchoolByName(string $name)
    {
        //
        return new RequestResource(true, "success", School::where("school_type", "SMA")->where("name", $name)->first());
    }

    /**
     * Display the specified school in surabaya by postal code.
     * @urlParam postal_code int required The school name. Example: 22312
     * @group Surabaya Senior High School
     * @authenticated
     */

     public function findSMASchoolByPostalCode(string $postal_code)
     {
         //
         return new RequestResource(true, "success", School::where("school_type", "SMA")->where("postal_code", $postal_code)->first());
     }
    
    
}
