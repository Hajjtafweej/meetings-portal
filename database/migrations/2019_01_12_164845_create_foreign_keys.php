<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Eloquent\Model;

class CreateForeignKeys extends Migration {

	public function up()
	{
		Schema::table('contents', function(Blueprint $table) {
			$table->foreign('nationalite_id')->references('id')->on('nationalities')
						->onDelete('cascade')
						->onUpdate('cascade');
		});
		Schema::table('contents', function(Blueprint $table) {
			$table->foreign('establishment_id')->references('id')->on('establishments')
						->onDelete('cascade')
						->onUpdate('cascade');
		});
		Schema::table('videos', function(Blueprint $table) {
			$table->foreign('content_id')->references('id')->on('contents')
						->onDelete('cascade')
						->onUpdate('cascade');
		});
		Schema::table('albums', function(Blueprint $table) {
			$table->foreign('content_id')->references('id')->on('contents')
						->onDelete('cascade')
						->onUpdate('cascade');
		});
	}

	public function down()
	{
		Schema::table('contents', function(Blueprint $table) {
			$table->dropForeign('contents_nationalite_id_foreign');
		});
		Schema::table('contents', function(Blueprint $table) {
			$table->dropForeign('contents_establishment_id_foreign');
		});
		Schema::table('videos', function(Blueprint $table) {
			$table->dropForeign('videos_content_id_foreign');
		});
		Schema::table('albums', function(Blueprint $table) {
			$table->dropForeign('albums_content_id_foreign');
		});
	}
}