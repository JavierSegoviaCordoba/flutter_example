import 'package:flutter/material.dart';
import 'package:flutter_example/ui/detail/detail.dart';

import '../../photo.dart';

Widget item(BuildContext context, int index, List<Photo> photoList) {
  return InkWell(
    onTap: () {
      /*final snackBar = SnackBar(content: Text(photoList[index].title));
      Scaffold.of(context).showSnackBar(snackBar);*/
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Detail(photo: photoList[index])),
      );
    },
    child: Row(
      children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: CircleAvatar(
            radius: 32,
            backgroundImage: NetworkImage(
                "https://picsum.photos/400?image=${photoList[index].id}"),
          ),
        ),
        Flexible(
          child: Padding(
            padding: EdgeInsets.only(
              right: 16,
            ),
            child: Text(
              photoList[index].author,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ],
    ),
  );

}
