<?php
namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomeController{
	#[Route('/', name: 'home_page')]
	public function list(): Response {
		return new Response('<html>Hello world</html>');
	}

	#[Route('/home-two', name: 'secondary_home')]
	public function homeTwo(): Response{
		return new Response('Hello home two');
	}
}