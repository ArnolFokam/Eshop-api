<?php

namespace App\Model;

use App\User;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
	protected $fillable = [
		'name', 'detail', 'stock', 'price', 'discount'
	];

    public function reviews(){
    	return $this->hasMany(Review::class);
    }

    public function user(){
    	return $this->belongsTo(User::class);
    }
}
