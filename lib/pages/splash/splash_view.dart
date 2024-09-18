import 'dart:async';

import 'package:flutter/material.dart';
import 'package:onboarding_app/core/cache_helper.dart';
import 'package:onboarding_app/core/services_locator.dart';
import 'package:onboarding_app/core/shared_keys.dart';
import 'package:onboarding_app/pages/home/home_view.dart';
import 'package:onboarding_app/pages/onboarding/onboarding_view.dart';


class SplashScreen extends StatelessWidget {
  static String routeName = "splash";
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      if (sl<CacheHelper>().getData(key: SharedKeys.onBoarding) == null) {
         Navigator.pushReplacementNamed(context, OnboardingView.routeName);
      } else {
         Navigator.pushReplacementNamed(context, HomeView.routeName);
      }
     
    });
    return Scaffold(
      body: Center(
        child: Image.asset("assets/images/splash.png"),
      ),
    );
  }
}
