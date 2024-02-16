import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothPageIndicator extends StatelessWidget {
  const CustomSmoothPageIndicator ({Key? key, required this.controller}) : super(key: key);
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return  SmoothPageIndicator(
      controller: controller, // PageController
      count: 3,
      effect: ExpandingDotsEffect(activeDotColor: AppColors.deepBrown,dotHeight: 6,dotWidth: 10),

    );
  }
}
