<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Establishment extends Model
{

    public function countries(){
        return $this->hasMany('App\Content','establishment_id');
    }
}
