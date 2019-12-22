<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class nationalities extends Model
{
    public function country(){
        return $this->hasMany('App\Content','nationalite_id');
    }
}
