import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const NewsContainer({super.key,required this.description,required this.image,required this.title,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(image),
        SizedBox(height: 5,),
        Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
        SizedBox(height: 5,),
        Text(description)
      ],
    );
  }
}
