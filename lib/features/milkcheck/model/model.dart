
import 'package:flower/core/App%20images.dart';
import 'package:flower/core/App%20texts.dart';

class milkshake {
  String image;
  String textImage;
  String des;
  bool fav;
  double price;
  bool addCart;
  int count;

  milkshake({
    required this.image,
    required this.textImage,
     required this.des,
    this.fav=false,
    required this.price,
    this.count = 0,
    this.addCart = false,
  }
      );
}


List<milkshake> milkshakes=[

  milkshake(
    image:milkshks.oreo,
    textImage: shks.oreo,
    des:shks.des,
    price:45,
  ),


  milkshake(
    image:milkshks.choclate,
    textImage:  shks.choclate,
    des:shks.des,
    price: 45,
  ),


  milkshake(
    image:milkshks.vanilla,
    textImage:  shks.vanilla,
    des:shks.des,
    price: 45,
  ),


  milkshake(
    image:milkshks.mango,
    textImage: shks.mango,
    des:shks.des,
    price: 45,
  ),




];


List<milkshake> cart = [

] ;
