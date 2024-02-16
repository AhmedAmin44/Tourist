import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/function/navigation.dart';
import 'package:dalel/core/serveces/service_locator.dart';
import 'package:dalel/core/utils/app_string.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart%20%20';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
  // to get data that are saved from part of onboarding to know if user visit or not
  bool isOnboardingVisited= getIt<CacheHelper>().getData(key: "isOnboardingVisited")??false;
  if(isOnboardingVisited==true){
    // if the user visit it before go direct to SignUp
    customDelay(context,"/signUp");
  } else{
    //if the user not visit it before go to onBoarding First
    customDelay(context,"/onBoarding");
  }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(AppStrings.appName,style: CustomTextStyles.pacifico400style64),
      ),
    );
  }
}
void customDelay(context,path){
  Future.delayed(const Duration(seconds: 2),() {
    customNavigateReplacement(context,path);
  },);

}