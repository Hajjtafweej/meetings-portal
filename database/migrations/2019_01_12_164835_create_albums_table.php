<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateAlbumsTable extends Migration {

	public function up()
	{
		Schema::create('albums', function(Blueprint $table) {
			$table->increments('id')->unique();
			$table->timestamps();
			$table->text('link');
			$table->integer('content_id')->unsigned();
		});
	}

	public function down()
	{
		Schema::drop('albums');
	}
}
