import 'package:flutter/cupertino.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_style.dart';

class HaveAccountWidget extends StatelessWidget {
  const HaveAccountWidget({Key? key, required this.text1, required this.text2}) : super(key: key);
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text.rich(TextSpan(
          children: [
            TextSpan(text:text1,style: CustomTextStyles.poppins400style12),
            TextSpan(text: text2,style: CustomTextStyles.poppins400style12.copyWith(color: AppColors.lightGrey)),
          ]
      )),
    );
  }
}
