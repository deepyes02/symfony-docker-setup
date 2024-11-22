<?php
namespace App\Controller;

use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;

class ApiController
{
    #[Route('/api/posts', name: 'get_posts')]
    public function getPosts(): JsonResponse
    {
        $data = [
            ['id' => 1, 'title' => 'First Post', 'content' => 'This is the first post content.'],
            ['id' => 2, 'title' => 'Second Post', 'content' => 'This is the second post content.'],
        ];

        return new JsonResponse($data);
    }
}
