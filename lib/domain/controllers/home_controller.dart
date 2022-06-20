import 'package:flutter/cupertino.dart';
import 'package:learning/data/repository/home_repository.dart';
import 'package:learning/domain/models/post_model.dart';

class HomeController {
  HomeController(this._homeRepository);

  final HomeRepository _homeRepository;

  var posts = ValueNotifier<List<PostModel>>([]);
  
  fetch() async {
    posts.value = await _homeRepository.getList();
  }
}