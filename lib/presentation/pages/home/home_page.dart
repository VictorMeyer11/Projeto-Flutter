import 'package:flutter/material.dart';
import 'package:learning/data/repository/home_repository_imp.dart';
import 'package:learning/domain/controllers/home_controller.dart';
import 'package:learning/domain/models/post_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = HomeController(HomeRepositoryImp());

  @override
  void initState() {
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: ValueListenableBuilder<List<PostModel>> (
        valueListenable: _controller.posts,
        builder: (_, list, __) => 
          ListView.separated(
            itemCount: list.length,
            separatorBuilder: (_, __) => const Divider(),
            itemBuilder: (_, index) =>
              ListTile(
                onTap: () => Navigator.of(context).pushNamed(
                  '/subHome', 
                  arguments: list[index]
                ),
                title: Text(list[index].title),
                leading: Text(list[index].id.toString()),
                trailing: const Icon(Icons.arrow_forward)
              )
          )
      )
    );
  }
}