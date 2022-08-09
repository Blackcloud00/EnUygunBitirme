<?php

namespace App\Controller\Admin;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use App\Entity\Product;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IntegerField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\CollectionField;

class ProductCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Product::class;
    }

    
    public function configureFields(string $pageName): iterable
    {

        return [
            IdField::new('parentId'),
            TextField::new('productName'),
            TextEditorField::new('productDescription'),
            IntegerField::new('productPrice'),
            ImageField::new('product_img')
            ->setBasePath('images/products')
            ->setUploadDir('public/images/products')
            ->setUploadedFileNamePattern('[randomhash].[extensions]')
            ->setRequired(false),
        ];
    }
    
}
