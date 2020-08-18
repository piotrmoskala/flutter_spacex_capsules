import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spacex_capsules/assets/strings.dart';

class LoadingWidget extends StatelessWidget {
  final Color loaderColor;
  final Color textColor;

  LoadingWidget(
      {this.loaderColor = Colors.indigo, this.textColor = Colors.indigo});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 170,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(this.loaderColor),
                strokeWidth: 2),
            Text(
              Strings.loadingData,
              style: TextStyle(
                  color: textColor == null ? this.loaderColor : this.textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w300),
            )
          ],
        ),
      ),
    );
  }
}
