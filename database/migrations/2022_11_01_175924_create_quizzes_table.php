<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('quizzes', function (Blueprint $table) {
            $table->id();
            $table->foreignId('module_id')
                ->nullable()
                ->constrained()
                ->onDelete('cascade');
            $table->foreignId('course_id')
                ->nullable()
                ->constrained()
                ->onDelete('cascade');
            $table->timestamps();
            $table->float('minimum_score');
            $table->json('title')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('quizzes');
    }
};