<?php


namespace App\Http\Controllers;

use App\Models\FormData;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\DB;
use mysql_xdevapi\Exception;
use Validator;

class ApiRunnersController extends Controller
{

    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     * Get Runner Detail by Id
     */
    public function runnerDetailById($id)
    {
        if (FormData::where('id', $id)->exists()) {
            $formData = FormData::where('id', $id)
                ->with(['runner' => function ($q) {
                    $q->selectraw("name, id");
                }, 'last_runs' => function ($q) {
                    $q->leftJoin('tbm_meetings', 'tbm_meetings.id', '=', 'tbm_form_last_runs.meeting_id')
                        ->selectraw("name AS meeting, achieved_score, tot_score, ROUND(((achieved_score)/(tot_score)*100),2) AS score, length, code, conditions,  price,value, remark, tbm_meetings.created_at AS created_at, tbm_meetings.id, runner_id");
                }])->get();

            return response()->json([
                "success" => "true",
                "data" => $formData[0],
                "status" => 200,

            ], Response::HTTP_OK);
        } else {
            return response()->json([
                "success" => "false",
                "data" => null,
                "status" => 404,

            ], Response::HTTP_NOT_FOUND);
        }
    }

}
