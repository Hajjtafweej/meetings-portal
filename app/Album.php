<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Album extends Model
{

    protected $table = 'albums';
    public $timestamps = true;
    protected $fillable = ['link', 'content_id'];



    public function content(){
        return $this->belongsTo(App\Album::class);
    }
}
