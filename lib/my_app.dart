import 'package:di_with_provider/post/screen/post_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Cubit Tutorials',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const PostScreen(),
    ); 
  }
}
