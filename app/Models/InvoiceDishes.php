<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class InvoiceDishes extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'invoice_id',
        'dish_id',
        'quantity',
        'price',
    ];
    protected $with = [
        'dish',
    ];

    /**
     * Get invoice information
     */
    public function invoice()
    {
        return $this->belongsTo(Invoice::class);
    }

    /**
     * Get dish information
     */
    public function dish()
    {
        return $this->belongsTo(Dish::class);
    }
}
