import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'app/trek_trove.dart';
import 'core/function/CheckStateChanges.dart';
import 'core/serveces/service_locator.dart';
import 'firebase_options.dart';
void main()async {
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(
     options: DefaultFirebaseOptions.currentPlatform,
   );
     setupServiceLocator();
         await getIt<CacheHelper>().init();
   CheckStateChanges();
  runApp(Dalel());
}

