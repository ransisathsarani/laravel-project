<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTbmFormLastRunsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbm_form_last_runs', function (Blueprint $table) {
            $table->id();
            $table->integer('runner_id');
            $table->integer('meeting_id');
            $table->integer('achieved_score');
            $table->integer('tot_score');
            $table->double('length')->default(0);
            $table->integer('code');
            $table->string('condition');
            $table->double('price')->default(0);
            $table->double('value')->default(0);
            $table->string('remark');
            $table->timestamp('created_at');
            $table->timestamp('updated_at')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tbm_form_last_runs');
    }
}
