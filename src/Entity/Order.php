<?php

namespace App\Entity;

use App\Repository\OrderRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: OrderRepository::class)]
#[ORM\Table(name: '`order`')]
class Order
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $OrderName = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $UserName = null;

    #[ORM\Column]
    private ?int $OrderId = null;

    #[ORM\Column(type: Types::TEXT, nullable: true)]
    private ?string $OrderAdres = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getOrderName(): ?string
    {
        return $this->OrderName;
    }

    public function setOrderName(string $OrderName): self
    {
        $this->OrderName = $OrderName;

        return $this;
    }

    public function getUserName(): ?string
    {
        return $this->UserName;
    }

    public function setUserName(?string $UserName): self
    {
        $this->UserName = $UserName;

        return $this;
    }

    public function getOrderId(): ?int
    {
        return $this->OrderId;
    }

    public function setOrderId(int $OrderId): self
    {
        $this->OrderId = $OrderId;

        return $this;
    }

    public function getOrderAdres(): ?string
    {
        return $this->OrderAdres;
    }

    public function setOrderAdres(?string $OrderAdres): self
    {
        $this->OrderAdres = $OrderAdres;

        return $this;
    }
}
