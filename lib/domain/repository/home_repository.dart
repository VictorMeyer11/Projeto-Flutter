import 'package:learning/domain/models/post_model.dart';

abstract class HomeRepository {
  Future<List<PostModel>> getList();
}