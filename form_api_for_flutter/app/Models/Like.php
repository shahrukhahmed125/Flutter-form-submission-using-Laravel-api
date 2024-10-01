<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Like extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_id',
        'feed_id',
    ];

    public function feeds(): BelongsTo
    {
        return $this->belongsTo(Feed::class);
    }

}
