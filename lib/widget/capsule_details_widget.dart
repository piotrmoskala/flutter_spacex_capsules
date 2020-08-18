import 'package:flutter/material.dart';
import 'package:spacex_capsules/assets/strings.dart';
import 'package:spacex_capsules/model/capsule.dart';
import 'package:spacex_capsules/widget/description_widget.dart';

class CapsuleDetailsWidget extends StatelessWidget {
  final Capsule capsule;

  CapsuleDetailsWidget(this.capsule);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      DescriptionWidget(
        title: Strings.capsuleId,
        description: capsule.id,
      ),
      DescriptionWidget(
        title: Strings.capsuleSerial,
        description: capsule.serial,
      ),
      DescriptionWidget(
        title: Strings.capsuleLastUpdate,
        description: capsule.lastUpdate,
      ),
      DescriptionWidget(
        title: Strings.capsuleLandLandings,
        description: "${capsule.landLandings}",
      ),
      DescriptionWidget(
        title: Strings.capsuleReuseCount,
        description: "${capsule.reuseCount}",
      ),
      DescriptionWidget(
        title: Strings.capsuleCurrentStatus,
        description: "${capsule.status}",
      ),
    ]));
  }
}
