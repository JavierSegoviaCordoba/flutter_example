import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/photo.dart';

class Detail extends StatelessWidget {
  final Photo photo;

  Detail({Key key, this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text(photo.author)),
        body: Image.network(
          "https://picsum.photos/400?image=${photo.id}",
          width: double.infinity,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

}
