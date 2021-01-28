
import 'dart:io';

import 'package:danboVideo/modules/category/category_module.dart';
import 'package:danboVideo/modules/home/home_module.dart';
import 'package:danboVideo/modules/me/me_module.dart';
import 'package:danboVideo/utils/dio_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {

  final List<Widget> _pages = [HomeModule(), CategoryModule(), MeModule()];
  final List<BottomNavigationBarItem> _items = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
    BottomNavigationBarItem(icon: Icon(Icons.list_rounded), label: '分类'),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: '我的'),
  ];
  int _currentIndex = 0;

  @override
  void initState() {

    DioUtils.setup();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    // if (Platform.isAndroid) {
    //   // 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前
    //   // MaterialApp组件会覆盖掉这个值。
    //   SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
    //       statusBarColor: Colors.transparent,
    //       statusBarIconBrightness: Brightness.light);
    //   SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    // }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            boxShadow: [
            BoxShadow(color: Colors.black12, spreadRadius: 0, blurRadius: 10),]
        ),
        child: ClipRRect(
          clipBehavior: Clip.hardEdge,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
          ),
          child: BottomNavigationBar(
            elevation: 20,
            currentIndex: _currentIndex,
            onTap: (index) {
              if (index != _currentIndex) {
                setState(() {
                  _currentIndex = index;
                });
              }
            },
            // selectedItemColor: Colors.blue,
            // unselectedItemColor: Colors.black,
            selectedFontSize: 9,
            unselectedFontSize: 9,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            items: _items,
          ),
        ),
      ),
    );
  }
}
