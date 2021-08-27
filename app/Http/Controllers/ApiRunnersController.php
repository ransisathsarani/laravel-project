<?php


namespace App\Http\Controllers;

use App\Models\FormData;
use App\Services\RunnerService;
use App\Repositories\RunnerRepository;
use Illuminate\Http\Response;
use mysql_xdevapi\Exception;
use Validator;

class ApiRunnersController extends Controller
{

    /**
     * @var RunnerRepository
     */
    protected $runnerRepository;
    /**
     * @var RunnerService
     */
    protected $runnerService;

    /**
     * ApiRunnersController constructor.
     * @param RunnerRepository $runnerRepository
     * @param RunnerService $runnerService
     */
    public function __construct(RunnerRepository $runnerRepository, RunnerService $runnerService)
    {
        $this->runnerRepository = $runnerRepository;
        $this->runnerService = $runnerService;
    }


    /**
     *
     * Display the specified runner
     * @param $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function runnerDetailById($id)
    {

        if (FormData::where('id', $id)->exists()) {
            $formData = $this->runnerService->getById($id);

            return response()->json([
                "success" => "true",
                "data" => $formData,
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
