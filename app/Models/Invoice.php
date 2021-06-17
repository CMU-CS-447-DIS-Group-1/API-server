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
        'table_id',
        'status',
    ];

    /**
     * Get user information
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    /**
     * Get table information
     */
    public function table()
    {
        return $this->hasOne(Table::class);
    }

    /**
     * Get all dishes of invoice
     */
    public function dishes()
    {
        return $this->hasMany(InvoiceDishes::class);
    }
}
