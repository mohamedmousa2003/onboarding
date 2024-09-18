import 'package:flutter/material.dart';
import 'package:onboarding_app/core/cache_helper.dart';
import 'package:onboarding_app/core/services_locator.dart';
import 'package:onboarding_app/pages/home/home_view.dart';
import 'package:onboarding_app/pages/onboarding/onboarding_view.dart';
import 'package:onboarding_app/pages/splash/splash_view.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  //get_ it
  setup();
  //shared preferences
  sl<CacheHelper>().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        OnboardingView.routeName: (context) =>  OnboardingView(),
        HomeView.routeName: (context) => const HomeView(),
      },
    );
  }
}


// package
//? smooth_page_indicator 
//? shared_preferences
//?  get_it