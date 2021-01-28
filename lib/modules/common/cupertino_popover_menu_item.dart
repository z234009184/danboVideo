import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPopoverMenuList extends StatelessWidget {
  final List<Widget> children;
  const CupertinoPopoverMenuList({this.children});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: children.length * 2 - 1,
      shrinkWrap: true,
      itemBuilder: (context, int i) {
        if (i.isOdd) {
          // 在每一列之前，添加一个1像素高的分隔线widget
          return const Divider(
            height: 1.0,
          );
        }
        final int index = i ~/ 2;
        return children[index];
      },
      padding: EdgeInsets.all(0.0),
    );
  }
}

class CupertinoPopoverMenuItem extends StatefulWidget {
  final Widget leading;
  final Widget child;
  final bool Function() onTap;
  final bool isTapClosePopover;

  const CupertinoPopoverMenuItem(
      {this.leading, this.child, this.onTap, this.isTapClosePopover = true});

  @override
  State<StatefulWidget> createState() => CupertinoPopoverMenuItemState();
}

class CupertinoPopoverMenuItemState extends State<CupertinoPopoverMenuItem> {
  bool isDown = false;

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];
    if (widget.leading != null) {
      widgets.add(Container(
        padding: EdgeInsets.only(left: 25.0, top: 10, bottom: 10),
        child: widget.leading,
      ));
    }
    widgets.add(Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: DefaultTextStyle(
              style: TextStyle(color: Colors.black87, fontSize: 15.0),
              child: widget.child),
        )));
    return GestureDetector(
      onTapDown: (detail) {
        setState(() {
          isDown = true;
        });
      },
      onTapUp: (detail) {
        if (isDown) {
          setState(() {
            isDown = false;
          });
          if (widget.onTap != null && widget.onTap()) {
            return;
          }
          if (widget.isTapClosePopover) {
            Navigator.of(context).pop();
          }
        }
      },
      onTapCancel: () {
        if (isDown) {
          setState(() {
            isDown = false;
          });
        }
      },
      child: Container(
        color: isDown ? Color(0x70F3B467) : Colors.white,
        child: Padding(
          padding: EdgeInsets.only(top: 2.5, bottom: 2.5),
          child: Row(children: widgets),
        ),
      ),
    );
  }
}
