<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Dish extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'price',
        'description',
    ];

    /**
     * Get all invoices have this dish
     */
    public function invoices()
    {
        return $this->hasManyThrough(Invoice::class, InvoiceDishes::class);
    }
}
