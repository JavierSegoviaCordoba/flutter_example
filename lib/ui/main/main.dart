import 'package:flutter/material.dart';
import 'package:flutter_example/photo.dart';
import 'package:flutter_example/repo.dart';
import 'package:flutter_example/ui/main/item.dart';

void main() => runApp(Main(photos: Repo().fetchPhotos()));

class Main extends StatelessWidget {
  final Future<List<Photo>> photos;

  Main({Key key, this.photos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter example')),
        body: Center(
          child: FutureBuilder<List<Photo>>(
            future: photos,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var photoList = snapshot.data;
                print(photoList.length);
                return ListView.builder(
                  itemBuilder: (context, index) {
                    if (index.isOdd) return Divider();
                    return item(context, index, photoList);
                  },
                  itemCount: photoList.length,
                );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }

}
