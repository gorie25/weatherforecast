import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:weathermobileapp/Routers/routers.dart';
import 'package:weathermobileapp/Screen/LoginScreen/signin.dart';

Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    // return MaterialApp.router(
    return MaterialApp(
      title: 'Flutter Demo',
     
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      // routerConfig: RouterConfigCustom.router, // Sử dụng router của GoRouter
      home: const SignInPage(),
    );
        

    
  }
}
