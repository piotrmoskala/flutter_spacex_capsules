import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DescriptionWidget extends StatelessWidget {
  final String title;
  final String description;
  final EdgeInsets padding;
  DescriptionWidget({this.title, this.description, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: padding == null ? EdgeInsets.only(left: 24, right: 24) : padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Flexible(child: Text(
            description == null ? "no data" : description,
            textAlign: TextAlign.left,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w300),
          ),)
        ],
      ),
    );
  }
}