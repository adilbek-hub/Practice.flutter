import 'package:exchange_color_throught_boolean/util/colors.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    Key? key,
    required this.iconAddRemove,
    required this.isBool,
  }) : super(key: key);
  final IconData iconAddRemove;
  final bool isBool; 

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: ForContainerColor.containerRed,
      child: Icon(
        iconAddRemove,
        size: 70,
        color: isBool ? ForContainerColor.iconColor : null,
      ),
    );
  }
}
