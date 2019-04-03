<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;

class Product extends Model
{
	use Sluggable;

    /**
     * Return the sluggable configuration array for this model.
     *
     * @return array
     */
    public function sluggable()
    {
        return [
            'product_slug' => [
                'source' => 'product_name'
            ]
        ];
    }
    protected $fillable = [
    	'product_name', 'product_slug', 'product_image', 'product_price', 'short_description', 'long_description', 'product_quantity', 'category_id'
    ];

    public function category()
    {
        return $this->belongsTo('App\Category');
    }
}
