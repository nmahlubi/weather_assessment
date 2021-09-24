// @dart=2.9
import 'package:assessment/ui/shared/text.styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextDescription extends StatelessWidget {
  String name;
  TextDescription({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name ?? '',
      maxLines: 5,
      overflow: TextOverflow.ellipsis,
      style: detailsSubStyle,
    );
  }
}
