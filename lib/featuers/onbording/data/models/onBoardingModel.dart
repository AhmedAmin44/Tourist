import 'package:dalel/core/utils/app_images.dart';

class OnBoardingModel{
  final String imagePath;
  final String title;
  final String subTitle;
  OnBoardingModel( {required this.imagePath,required this.title, required this.subTitle,});
}
List <OnBoardingModel> onBoardingData=[
  OnBoardingModel(imagePath: Images.frame1, title: "Explore The history with\nDalel in a smart way", subTitle: "Using our app’s history libraries \nyou can find many historical periods "),
  OnBoardingModel(imagePath: Images.frame2, title: 'From every place \n on earth', subTitle: 'A big variety for ancient places \n from all over the world'),
  OnBoardingModel(imagePath: Images.frame3, title: 'Using modern AI technology \n for better user experience', subTitle: 'AI provide recommendations and helps \n you to continue the search journey'),
];