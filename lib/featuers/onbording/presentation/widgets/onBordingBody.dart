import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/featuers/onbording/data/models/onBoardingModel.dart';
import 'package:dalel/featuers/onbording/presentation/widgets/CustomSmoothPageIndicator.dart';
import 'package:flutter/cupertino.dart';

class OnBordingBody extends StatelessWidget {
  const OnBordingBody({Key? key,required this.controller, required this.OnPageChanged, }) : super(key: key);
  final PageController controller;
  final Function(int)OnPageChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        onPageChanged: OnPageChanged,
          //علشان اشيل اللون الازرق وانا بسكرول
          physics: const BouncingScrollPhysics(),
          controller: controller,
          //علشان استخدم البيانات الى فى الموديل
          itemCount: onBoardingData.length,
          itemBuilder: (context, index) {
            return Column(
                children: [
                Container(
                height: 290,
                width: 343,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                           onBoardingData[index].imagePath
                        ),
                        fit: BoxFit.fill))),
            const SizedBox(
            height: 24,
            ),
            CustomSmoothPageIndicator(
            controller: controller,
            ),
            const SizedBox(
            height: 32,
            ),
            Text(onBoardingData[index].title
            ,
            style: CustomTextStyles.poppins500style24
                .copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
            height: 16,
            ),
            Text(onBoardingData[index].subTitle
            ,
            style: CustomTextStyles.poppins300style16,
            textAlign: TextAlign.center,
            ),

            ],
            );
            }),
    );
  }
}
