import 'package:flutter/material.dart';
import 'package:learning/domain/models/post_model.dart';

class SubHomePage extends StatelessWidget {
  const SubHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as PostModel;

    return Scaffold(
      appBar: AppBar(title: Text(args.title)),
      body: Container(
        padding: const EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              args.title, 
              style: const TextStyle(
                fontSize: 22, 
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic
              )
            ),
            const SizedBox(height: 24),
            Text(
              args.body,
              style: const TextStyle(fontSize: 16)
            ),
            Text(
              'Notícia: ${args.id}, Autor: ${args.userId}',
              style: const TextStyle(fontSize: 16)
            )
          ]
        ),
      )
    );
  }
}