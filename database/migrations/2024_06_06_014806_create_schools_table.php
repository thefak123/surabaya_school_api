<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('schools', function (Blueprint $table) {
            $table->id();
            $table->string('name', 300)->nullable();
            $table->text('address')->nullable();
            $table->text('postal_code')->nullable();
            $table->unsignedBigInteger('school_type_id')->nullable();
            $table->foreign('school_type_id')->references('id')->on('school_types')->onDelete('set null');
            $table->string('phone_number', 100);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('schools');
    }
};
