import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spacex_capsules/model/capsule.dart';

class ContentItemWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final Capsule capsule;

  const ContentItemWidget({
    Key key,
    this.capsule,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          width: 240,
          child: Card(
            elevation: 4.0,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                      "https://logo-logos.com/wp-content/uploads/2018/02/SpaceX.png"),
                  Text("Capsule id:"),
                  Text(
                    capsule.id,
                    textAlign: TextAlign.center,
                  ),
                  Text("Serial number:"),
                  Text(
                    capsule.serial,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
