<?php

namespace App\Services;

use App\Repositories\RunnerRepository;

class RunnerService
{

    protected $runnerRepository;

    public function __construct(
        RunnerRepository $runnerRepository
    )
    {
        $this->runnerRepository = $runnerRepository;

    }

    /**
     * Get Runner by ID
     *
     * @param $id
     * @return String
     */
    public function getById($id)
    {
        return $this->runnerRepository->find($id);

    }

}
