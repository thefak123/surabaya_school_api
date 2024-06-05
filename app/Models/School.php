<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class School extends Model
{
    use HasFactory;
    protected $hidden = ['created_at', 'updated_at'];
    protected $with = ['schoolType'];
    
    public function schoolType(): BelongsTo
    {
        return $this->belongsTo(SchoolType::class)->withDefault();
    }

    
}
