import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/screens/signup/widgets/onboarding.dart';

void main() {
  runApp(const App());
}
class App extends StatelessWidget {
  const App ({super.key});
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home:  const OnBoardingScreen(),

    );
  }
}