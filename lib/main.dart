import 'package:elegant/ui/home.dart';
import 'package:elegant/ui/preview.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      PreviewPage(),
      PreviewPage(),
    ];

    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorSchemeSeed: const Color(0xFF009E60),
        splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
      ),
      home: HomePage(pages),
    );
  }
}


