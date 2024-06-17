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
        Schema::create('delivaries', function (Blueprint $table) {
            $table->id();
            $table->string('select_time');
            $table->string('delivary_time');
            $table->foreignId('order_id')->constrained()->references('id')->on('orders')->onDelete('cascade');
            $table->foreignId('derivaryman_id')->constrained()->references('id')->on('derivarymen')->onDelete('cascade');


            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('delivaries');
    }
};
