import 'package:flutter/material.dart';
import 'package:ui_store/models/shoe.dart';

class Cart extends ChangeNotifier{
  //* list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Air Max 95',
        price: '175',
        imagePath: 'images/s1.webp',
        description:
            'Sal a la calle con estilo y con una comodidad comprobada con el Air Max 95.'),
    Shoe(
        name: 'Pegasus 38',
        price: '130',
        imagePath: 'images/s2.webp',
        description:
            'Con una pisada elástica para cualquier tipo de carrera.'),
    Shoe(
        name: 'Air Force 1`07',
        price: '110',
        imagePath: 'images/s3.webp',
        description:
            'El fulgor vive en el Nike Air Force 1 ’07, el OG de básquetbol que le da un toque fresco a lo que mejor conoces.'),
    Shoe(
        name: 'Dunk Low Retro',
        price: '110',
        imagePath: 'images/s4.webp',
        description:
            'Created for the hardwood but taken to the streets.'),
    Shoe(
        name: 'Air Force 1`07',
        price: '110',
        imagePath: 'images/s5.webp',
        description: 'You`ll score major points in this legendary classic.'),
  ];

  //* list of items in user cart
  List<Shoe> userCart = [];

  //* get list of shoes for sale
  List<Shoe> getShoeList(){
    return shoeShop;
  }

  //* get cart
  List<Shoe> getUserCart(){
    return userCart;
  }

  //* add items to cart
  void addItemTocart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  //* remove item from cart
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();

  }
}
