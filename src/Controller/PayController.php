<?php

namespace App\Controller;

use App\Entity\Order;
use App\Entity\Product;
use App\Repository\ProductRepository;
use App\Repository\UserRepository;
use App\Repository\OrderRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Core\Security;

class PayController extends AbstractController
{
    #[Route('/pay', name: 'app_pay')]
    public function index(ProductRepository $productRepository): Response
    {
      $user = $this->get('security.token_storage')->getToken()->getUser();
      $request = Request::createFromGlobals();
      $products = $productRepository;
      $p_id = $request->get('productId');
      $order = new Order();
      $products = $products->find($p_id);
      if (!empty($products)) {
        return $this->render('pay/index.html.twig', [
          'db_urun' => true,
          'urun' => $products,
        ]);
      }
      else {
        return $this->render('pay/index.html.twig', [
          'db_urun' => false,
          'dsa' => "ürün yok",
        ]);
      }
    }
}
