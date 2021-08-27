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
     * @OA\Get(
     *     path="/api/v1/runner/1/form-data",
     *      tags={"Runner"},
     *         summary="find by id",
     *     @OA\Parameter(
     *          name="id",
     *          description="Find by ID",
     *          required=true,
     *          in="path",
     *          @OA\Schema(
     *              type="integer"
     *          )
     *      ),
     *     @OA\Response(response="200", description="successfully."),
     *     security={{ "apiAuth": {} }},
     *     @OA\Response(response="404", description="Record Not Found."),
     *     @OA\Response(response="400", description="Bad Request."),
     *     @OA\Response(response="500", description="Server Error.")
     *
     * )
     */
    public function runnerDetailById($id)
    {
        try {
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
        } catch (Exception $e) {
            return response()->json([
                "success" => "false",
                "data" => null,
                "status" => 500,
                "message" => $e->getMessage(),
            ], Response::HTTP_INTERNAL_SERVER_ERROR);

        }

    }


}
