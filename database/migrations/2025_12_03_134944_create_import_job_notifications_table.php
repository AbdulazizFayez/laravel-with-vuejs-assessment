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
        Schema::create('import_job_notifications', function (Blueprint $table) {
            $table->id();
            
            $table->string('user_id');
            $table->string('excel_file');
            $table->string('message_type');
            $table->string('message');
            $table->string('status');
            $table->dateTime('read_at')->nullable();

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('import_job_notifications');
    }
};
