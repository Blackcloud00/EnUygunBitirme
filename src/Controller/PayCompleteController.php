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


class PayCompleteController extends AbstractController
{
  #[Route('/paycomplete', name: 'app_pay') ]
  public function index(ProductRepository $productRepository, OrderRepository $orderRepository): Response
  {
    $user = $this->get('security.token_storage')->getToken()->getUser();
    $request = Request::createFromGlobals();
    $p_id = $request->get('productId');
    $products = $productRepository;
    $order = new Order();
    $products = $products->find($p_id);
    //dd($products);
    $order
      ->setUserName($user->getEmail())
      ->setOrderAdres($user->getUserAdress())
      ->setOrderName($products->getProductName())
      ->setOrderId($products->getId())
    ;
    $orderRepository->add($order, true);
    if (!empty($products)) {
      return $this->render('paycomplete/index.html.twig', [
        'db_urun' => true,
        'urun' => $products,
      ]);
    }
    else {
      return $this->render('paycomplete/index.html.twig', [
        'db_urun' => false,
        'dsa' => "ürün yok",
      ]);
    }

  }
}
