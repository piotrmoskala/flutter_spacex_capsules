import 'package:flutter/widgets.dart';
import 'package:spacex_capsules/model/capsule.dart';
import 'package:spacex_capsules/widget/content_item_widget.dart';

class HorizontalContentItemList extends StatelessWidget {
  final List<Capsule> items;
  final ValueChanged<Capsule> onItemTap;

  const HorizontalContentItemList({
    Key key,
    @required this.items,
    this.onItemTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          Capsule course = items[index];
          return _HorizontalContentItemListItem(
            item: course,
            onTap: onItemTap,
          );
        },
      ),
    );
  }
}

class _HorizontalContentItemListItem extends StatelessWidget {
  final Capsule item;
  final ValueChanged<Capsule> onTap;

  const _HorizontalContentItemListItem({
    Key key,
    @required this.item,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16.0, 0, 0, 0),
      child: ContentItemWidget(
          capsule: item, onPressed: () => onTap(item)),
    );
  }
}
