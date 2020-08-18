import 'package:flutter/material.dart';
import 'package:spacex_capsules/model/capsule.dart';
import 'package:spacex_capsules/widget/description_widget.dart';

class CapsuleDetailsWidget extends StatelessWidget {
  final Capsule capsule; 

  CapsuleDetailsWidget(this.capsule); 

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         children: [
           DescriptionWidget(title: "ID:", description: capsule.id,),
           DescriptionWidget(title: "Serial:", description: capsule.serial,),
           DescriptionWidget(title: "Last update:", description: capsule.lastUpdate,),
           DescriptionWidget(title: "Land landings:", description: "${capsule.landLandings}",),
           DescriptionWidget(title: "Reuse count:", description: "${capsule.reuseCount}",),
           DescriptionWidget(title: "Current status:", description: "${capsule.status}",),
         ]
       )
    );
  }

}