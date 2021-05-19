<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Invoice extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'user_id',
    ];

    /**
     * Get user information
     */
    public function user()
    {
        return $this->hasOne(User::class);
    }

    /**
     * Get all dishes of invoice
     */
    public function dishes()
    {
        return $this->hasManyThrough(Dish::class, InvoiceDishes::class);
    }
}
