<?php

namespace App\Repositories;

use App\Models\FormData;

class RunnerRepository
{

    public $formData;

    function __construct(FormData $formData)
    {
        $this->formData = $formData;
    }


    /**
     * Get Post by ID
     *
     * @param $id
     * @return mixed
     */
    public function find($id)
    {
        return FormData::where('id', $id)->with(['runner' => function ($q) {
            $q->selectraw("name, id");
        }, 'last_runs' => function ($q) {
            $q->leftJoin('tbm_meetings', 'tbm_meetings.id', '=', 'tbm_form_last_runs.meeting_id')
                ->selectraw("name AS meeting, achieved_score, tot_score, ROUND(((achieved_score)/(tot_score)*100),2) AS score, length, code, conditions,  price,value, remark, tbm_meetings.created_at AS created_at, tbm_meetings.id, runner_id");
        }])->get();
    }
}
