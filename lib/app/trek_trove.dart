import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20%20';

import '../core/utils/app_colors.dart';
import '../routers.dart';

class Dalel extends StatelessWidget {
  const Dalel({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(scaffoldBackgroundColor: AppColors.offWhite),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
