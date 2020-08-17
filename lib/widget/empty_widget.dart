import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EmptyWidget extends StatelessWidget {
  final String text;

  EmptyWidget({this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              text,
              style: Theme.of(context).textTheme.bodyText1,
            )
          ],
        ),
      ),
    );
  }
}
