import 'package:di_with_provider/domain/post_repository.dart';
import 'package:di_with_provider/post/provider/post_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';


import 'my_app.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  final postRepository = PostRepository(); // Instantiate PostRepository with the BaseRepository instance

  runApp(
    ChangeNotifierProvider<PostProvider>(
      create: (_) => PostProvider(postRepository)..fetchData(),
      child: const MyApp(),
    ),
  );
}

