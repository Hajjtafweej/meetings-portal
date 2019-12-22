<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Video extends Model
{

    protected $table = 'videos';
    public $timestamps = true;
    protected $fillable = ['link', 'content_id'];


}
