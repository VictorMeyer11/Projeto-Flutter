import 'package:flutter/material.dart';
import 'package:learning/domain/controllers/home_controller.dart';
import 'package:learning/domain/models/post_model.dart';
import 'package:learning/domain/repository/home_repository_mock.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = HomeController(HomeRepositoryMock());

  @override
  void initState() {
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder<List<PostModel>> (
        valueListenable: _controller.posts,
        builder: (_, list, __) => 
          ListView.builder(
            itemCount: list.length,
            itemBuilder: (_, index) =>
              ListTile(title: Text(list[index].title)))
      )
    );
  }
}