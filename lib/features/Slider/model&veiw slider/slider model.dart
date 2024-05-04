import 'package:flower/core/App%20images.dart';
import 'package:flower/core/App%20texts.dart';

class OnboardingModel {
  final String backgroundImage;
  final String image;
  final String title;
  final String desc;
  final String buttonText;



  OnboardingModel(
      {required this.title,
        required this.image,
        required this.backgroundImage,
        required this.buttonText,
        required this.desc
      }
      );
}

List<OnboardingModel>  sliders = [

  OnboardingModel(
      title: AppTexts.Dounts,
      image: AppImages.Dounts,
      backgroundImage:AppImages.Splash1,
      buttonText: "Next",
      desc: "Made by hand, from scratch \n with love"
  ) ,


  OnboardingModel(
      title:AppTexts.Cake,
      image: AppImages.Cake,
      backgroundImage: AppImages.Splash2,
      buttonText: "Next",
      desc: "Made by hand, from scratch \n with love"
  ) ,

  OnboardingModel(
      title: AppTexts.Milkshake,
      image: AppImages.milksheck,
      backgroundImage: AppImages.Splash3,
      buttonText: "Get started",
      desc: "Made by hand, from scratch \n with love"
  ) ,
];