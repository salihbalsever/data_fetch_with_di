import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/post_provider.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter List Example'),
      ),  
    body: Center(
  child: Consumer<PostProvider>(
    builder: (context, notifier, _) {
      if (notifier.status == PostStatus.loading) {
        return CircularProgressIndicator();
      } else if (notifier.status == PostStatus.success) {
      return ListView.builder(
          itemCount: notifier.posts.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(notifier.posts[index].title.toString()),
            );
          },
        );
      } else {
        return Text("Error occurred while fetching posts.");
      }
    },
  ),
),

    );
  }
}