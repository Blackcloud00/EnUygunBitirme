<?php

namespace App\Entity;

use App\Repository\CategoryRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: CategoryRepository::class)]
class Category
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $name = null;

    #[ORM\Column(type: Types::TEXT, nullable: true)]
    private ?string  $cat_parent_id = null;

    #[ORM\Column(type: Types::TEXT, nullable: true)]
    private ?string $cat_img = null;

    #[ORM\Column(type: Types::TEXT, nullable: true)]
    private ?string $cat_des = null;

    #[ORM\ManyToMany(targetEntity: Product::class, mappedBy: 'category')]
    private Collection $products;

    public function __construct()
    {
        $this->products = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }

    public function getCatParentId(): ?string
    {
      return $this->cat_parent_id;
    }

    public function setCatParentId(?string $cat_parent_id): self
    {
        $this->cat_parent_id = $cat_parent_id;

        return $this;
    }

    public function getCatImg(): ?string
    {
        return $this->cat_img;
    }

    public function setCatImg(?string $cat_img): self
    {
        $this->cat_img = $cat_img;

        return $this;
    }

    public function getCatDes(): ?string
    {
        return $this->cat_des;
    }

    public function setCatDes(?string $cat_des): self
    {
        $this->cat_des = $cat_des;

        return $this;
    }

    /**
     * @return Collection<int, Product>
     */
    public function getProducts(): Collection
    {
        return $this->products;
    }

    public function addProduct(Product $product): self
    {
        if (!$this->products->contains($product)) {
            $this->products->add($product);
            $product->addCategory($this);
        }
        return $this;
    }

    public function removeProduct(Product $product): self
    {
        if ($this->products->removeElement($product)) {
            $product->removeCategory($this);
        }

        return $this;
    }
}
