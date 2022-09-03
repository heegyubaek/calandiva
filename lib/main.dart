import 'package:calandiva/utils/colors.dart';
import 'package:calandiva/views/home_screen.dart';
import 'package:calandiva/views/login_screen.dart';
import 'package:flutter/material.dart';
// import 'swipe_feed_page.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calandiva',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
      },
      home: const LoginScreen(),
    );
  }
}

// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Tinder cards demo',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: SwipeFeedPage(),
//     );
//   }
// }
