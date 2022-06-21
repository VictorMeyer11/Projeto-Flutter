import 'package:dio/dio.dart';
import 'package:learning/domain/models/post_model.dart';
import 'package:learning/domain/repository/home_repository.dart';

class HomeRepositoryImp implements HomeRepository {
  @override
  Future<List<PostModel>> getList() async {
    try {
      var response = await Dio().get('https://jsonplaceholder.typicode.com/posts');
      return (response.data as List).map((e) => PostModel.fromJson(e)).toList();
    } catch(e) {
      return [];
    }
  }
}