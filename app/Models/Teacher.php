<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Teacher extends Model
{
    use HasFactory;
    protected $hidden = ['created_at', 'updated_at'];
    protected $with = ['school', 'gender'];

    public function school(): BelongsTo
    {
        return $this->belongsTo(SchoolType::class)->withDefault();
    }

    public function gender(): BelongsTo
    {
        return $this->belongsTo(Gender::class)->withDefault();
    }
}
