<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class establishments extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('establishments')->delete();
        DB::table('establishments')->insert(array(
                array('name_ar'=>'جنوب شرق آسيا', 'name_en'=>'South East Asia'),
                array('name_ar'=>'جنوب آسيا','name_en'=>'South Asia'),
                array('name_ar'=>'الدول الأفريقية غير العربية','name_en'=>'Africa non-Arab') ,
                array('name_ar'=>'الدول العربية','name_en'=>'Arab Countries'),
                array('name_ar'=>'تركيا','name_en'=>'Turkey') ,
                array('name_ar'=>'إيران','name_en'=>'Iran'),
                array('anme_ar'=>'حجاج الداخل','name_en'=>'Internal hajj'),
        ));
    }
}
