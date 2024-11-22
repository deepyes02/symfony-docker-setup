<?php
namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class BlogController{
	#[Route('/', name: 'home_page')]
	public function list(): Response {
		return new Response('<html>Hello world</html>');
	}
}