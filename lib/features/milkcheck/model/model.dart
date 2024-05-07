
import 'package:flower/core/App%20images.dart';
import 'package:flower/core/App%20texts.dart';

class Sweets {
  String image;
  String textImage;
  String des;
  bool fav;
  double price;
  bool addCart;
  int count;

  Sweets({
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


List<Sweets> milkshakes=[

  Sweets(
    image:milkshks.oreo,
    textImage: shks.oreo,
    des:shks.des,
    price:45,
  ),


  Sweets(
    image:milkshks.choclate,
    textImage:  shks.choclate,
    des:shks.des,
    price: 45,
  ),


  Sweets(
    image:milkshks.vanilla,
    textImage:  shks.vanilla,
    des:shks.des,
    price: 45,
  ),


  Sweets(
    image:milkshks.mango,
    textImage: shks.mango,
    des:shks.des,
    price: 45,
  ),




];

List<Sweets> sweets=[

  Sweets(
    image:AppImages.dount,
    textImage: AppTexts.Dounts,
    price: 45,
    des:shks.des,

  ),


  Sweets(
    image:AppImages.Cake,
    textImage: AppTexts.Cake,
    price: 45,
    des:shks.des,

  ),


  Sweets(
    image:AppImages.dount,
    textImage: AppTexts.Dounts,
    price: 45,
    des:shks.des,

  ),


  Sweets(
    image:AppImages.Cake,
    textImage: AppTexts.Cake,
    price: 45,
    des:shks.des,

  ),


  Sweets(
    image:AppImages.dount,
    textImage: AppTexts.Dounts,
    price: 45,
    des:shks.des,

  ),


  Sweets(
    image:AppImages.Cake,
    textImage: AppTexts.Cake,
    price: 45,
    des:shks.des,

  ),


  Sweets(
    image:AppImages.dount,
    textImage: AppTexts.Dounts,
    price: 45,
    des:shks.des,

  ),


  Sweets(
    image:AppImages.Cake,
    textImage: AppTexts.Cake,
    price: 45,
    des:shks.des,

  ),
  Sweets(
    image:AppImages.dount,
    textImage: AppTexts.Dounts,
    price: 45,
    des:shks.des,

  ),


  Sweets(
    image:AppImages.Cake,
    textImage: AppTexts.Cake,
    price: 45,
    des:shks.des,

  ),



];


List<Sweets> cart = [

] ;
