
import '../../../core/database/cache/cache_helper.dart';
import '../../../core/serveces/service_locator.dart';

void OnBoardingVisited(){
  // the method that store the user are visit the app ,that used in (skip , creat acc , login now)
  getIt<CacheHelper>().saveData(key: "isOnboardingVisited", value: true );

}