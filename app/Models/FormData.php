<?php


namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FormData extends Model
{
    /**
     * The table used by the model
     *
     *
     * @var string
     */
    protected $table = 'tbm_form_data';

    /**
     * @var string[]
     */
    protected $guarded = ['id'];

    /**
     * The attributes that should be cast to native types
     * @var string[]
     */
    protected $casts = [
        'created_at' => 'date:Y-m-d H:i:s',
        'updated_at' => 'date:Y-m-d H:i:s'
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function runner()
    {
        return $this->belongsTo('App\Models\Runner', 'runner_id', 'id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function last_runs()
    {
        return $this->hasMany('App\Models\LastRuns', 'runner_id', 'runner_id');
    }

}
