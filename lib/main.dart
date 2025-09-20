import 'package:flutter/material.dart';
import 'core/routing/app_router.dart';

void main() {
  runApp(BiletimApp());
}

class BiletimApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Biletim App',
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
