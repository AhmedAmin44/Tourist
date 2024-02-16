import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/function/navigation.dart';
import 'package:dalel/core/utils/app_string.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/core/widgets/customButton.dart';
import 'package:dalel/featuers/onbording/data/models/onBoardingModel.dart';
import 'package:dalel/featuers/onbording/presentation/widgets/onBordingBody.dart';
import 'package:flutter/material.dart%20%20';

import '../../../../core/serveces/service_locator.dart';
import '../../Functions/on_boarding.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController(initialPage: 0);
   int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
              physics: const BouncingScrollPhysics(), children: [
            const SizedBox(height: 25),
            Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    //
                    OnBoardingVisited();
                    customNavigateReplacement(context, "/signUp");
                  },
                  child: Text(AppStrings.skip,
                      style: CustomTextStyles.poppins300style16
                          .copyWith(fontWeight: FontWeight.w400)),
                )),
            OnBordingBody(
              controller: _controller,
              OnPageChanged: (index ) {
                currentIndex=index;
                setState(() {

                });},
            ),
            const SizedBox(
              height: 185,
            ),
            currentIndex == onBoardingData.length - 1
                ? Column(
                    children: [
                      CustomBotton(
                          text: AppStrings.createAccount,
                          onPressed: () {
                            OnBoardingVisited();
                            customNavigateReplacement(context, "/signUp");
                          }),
                      const SizedBox(height: 16),
                      GestureDetector(
                        onTap: () {
                          OnBoardingVisited();

                          customNavigateReplacement(context, "/login");
                        },
                        child: Text(
                          "Login",
                          style: CustomTextStyles.poppins300style16
                              .copyWith(fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  )
                : CustomBotton(
                    text: AppStrings.next,
                    onPressed: () {
                      _controller.nextPage(
                          duration: const Duration(microseconds: 200),
                          curve: Curves.bounceIn);
                    },
                  ),
            const SizedBox(
              height: 17,
            )
          ]),
        ),
      ),
    );
  }
}
