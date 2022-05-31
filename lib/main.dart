import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

import 'views/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'DUS COFFEE',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          //primarySwatch: Colors.grey,
          primaryColor: const Color.fromRGBO(19, 61, 123, 1),
        ),
        initialRoute: "/",
        getPages: [
          GetPage(name: "/", page: () => const SplashScreen()),
        ]);
  }
}
