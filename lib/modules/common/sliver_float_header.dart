

import 'package:flutter/material.dart';

class SliverFloatHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget widget;
  final double height;
  final Color color;

  const SliverFloatHeaderDelegate(this.widget, {this.color, this.height = 30})
      : assert(widget != null);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: widget,
      color: color,
    );
  }

  @override
  bool shouldRebuild(SliverFloatHeaderDelegate oldDelegate) {
    return false;
  }

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;
}