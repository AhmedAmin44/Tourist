import 'package:dalel/core/serveces/service_locator.dart';
import 'package:dalel/featuers/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:dalel/featuers/auth/presentation/views/signIn_view.dart';
import 'package:dalel/featuers/auth/presentation/views/signUp_view.dart';
import 'package:dalel/featuers/onbording/presentation/views/onBording.dart';
import 'package:dalel/featuers/onbording/presentation/views/splach_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const SplashScreen(),
  ),
  GoRoute(
    path: "/onBoarding",
    builder: (context, state) => const OnBoardingScreen(),
  ),
  GoRoute(
    path: "/signUp",
    builder: (context, state) => BlocProvider(
        create: (context) => getIt<AuthCubit>(), child: SignUpView()),
  ),
  GoRoute(
    path: "/login",
    builder: (context, state) => BlocProvider(
        create: (context) => getIt<AuthCubit>(), child: const LoginView()),
  ),
]);
