import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:onboarding_screen/controllers/user_controller.dart';
import 'package:onboarding_screen/firebase_options.dart';
import 'package:onboarding_screen/home_Screen.dart';
import 'package:onboarding_screen/sign_In.dart';

import 'onboardingScreen/onboarding_Screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:OnboardingScreen(),
    );
  }
}


