import 'package:di_with_provider/data/utils/bas_repository.dart';
import 'package:flutter/material.dart';

import '../../data/models/post_model.dart';

class PostProvider extends ChangeNotifier {
 
PostProvider(this._baseRepository); 
  final BaseRepository _baseRepository;

PostStatus _status = PostStatus.loading;
  List<Post> _posts = [];
  List<Post> get posts => _posts;
  PostStatus get status => _status;

  Future<void> fetchData() async {
    _status = PostStatus.loading;
    notifyListeners();
    try {
      final posts =
          await _baseRepository.fetchData(objectModel: Post(), subUrl: 'posts');
      _status = PostStatus.success;
      _posts = posts;
    } catch (e) {
      _status = PostStatus.failure;
    }
    notifyListeners();
  }
}

enum PostStatus { loading, success, failure }
