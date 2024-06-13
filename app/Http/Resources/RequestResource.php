<?php

namespace App\Http\Resources;

use App\Models\School;
use App\Models\SchoolType;
use Illuminate\Http\Resources\Json\JsonResource;


// Package bawaan laravel yaitu JsonResource membantu agar output bisa berbentuk JSON
class RequestResource extends JsonResource
{
    //define properti
    public $status;
    public $message;
    public $resource;
    
    /**
     * __construct
     *
     * @param  mixed $status
     * @param  mixed $message
     * @param  mixed $resource
     * @return void
     */
    public function __construct($status, $message, $resource)
    {

        // parent::__construct($resource); digunakan untuk formatter atau converter dari data yang berbentuk class atau object menjadi JSON
        parent::__construct($resource);
        $this->status  = $status;
        $this->message = $message;
        
    }

    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'success'   => $this->status,
            'message'   => $this->message,
            // Fungsi yang dipanggil dari parent::__construct($resource); kemudian diimplementasikan dibagian data agar output bisa berupa JSON
            'data'      => $this->resource
        ];
    }
}

?>

