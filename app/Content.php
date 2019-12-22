<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Content extends Model
{



    protected $table = 'contents';
    public $timestamps = true;

    public function album()
    {
        return $this->hasOne('App\Album', 'content_id');
    }

    public function videos()
    {
        return $this->hasMany('App\Video', 'content_id');
    }


    public function establishment(){
        return $this->belongsTo('App\Establishment');
    }

    public function nationalite(){
        return $this->belongsTo('App\nationalities');
    }


}
