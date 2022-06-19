import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as String;
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop("Retorno");
        }, 
        child: Text(args)
      )
    );
  }
}