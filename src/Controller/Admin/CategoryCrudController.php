<?php

namespace App\Controller\Admin;

use App\Entity\Category;
use App\Repository\CategoryRepository;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ChoiceField;

class CategoryCrudController extends AbstractCrudController
{
  public static function getEntityFqcn(): string
  {
    return Category::class;
  }
  public function configureFields(string $pageName): iterable
  {
    return [
      IdField::new('id', "Kategori Id")
        ->setRequired(false),
      TextField::new('name', "Kategori Adı"),
      TextEditorField::new('cat_des', "Kategori Açıklama"),
      //TextField::new('cat_parent_id', "Üst Kategori Seçim"),
      ImageField::new('cat_img', "Kategori Resim")
        ->setBasePath('images/category')
        ->setUploadDir('public/images/category')
        ->setUploadedFileNamePattern('[randomhash].[extensions]')
        ->setRequired(false),
    ];
  }

}
