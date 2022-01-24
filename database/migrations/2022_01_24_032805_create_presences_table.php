<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePresencesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('presences', function (Blueprint $table) {
            $table->id();
            $table->foreignId('id_classroom')->references('id')->on('classrooms');
            $table->string('number');
            $table->enum('status', ['present', 'not present', 'permit', 'sick', 'forget'])->default('forget');
            $table->timestamps();

            $table->foreign('number')->references('number')->on('students');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('presences');
    }
}
