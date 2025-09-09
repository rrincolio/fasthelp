import 'package:flutter/material.dart';
import 'package:fasthelp/screens/onboarding_screen.dart';
import 'package:fasthelp/providers/user_provider.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FastHelpApp());
}

class FastHelpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FastHelp',
        theme: ThemeData(
          primaryColor: Colors.blue,
          accentColor: Colors.green,
          fontFamily: 'Roboto',
        ),
        home: OnboardingScreen(),
      ),
    );
  }
}
