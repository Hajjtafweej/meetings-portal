<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateContentsTable extends Migration {

	public function up()
	{
		Schema::create('contents', function(Blueprint $table) {
			$table->increments('id');
			$table->timestamps();
			$table->text('brife');
			$table->string('flag');
			$table->integer('nationalite_id')->unsigned();
			$table->text('description');
			$table->text('attendinfo');
			$table->integer('establishment_id')->unsigned();
		});
	}

	public function down()
	{
		Schema::drop('contents');
	}
}
