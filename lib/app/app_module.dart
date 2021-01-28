

import 'package:danboVideo/app/app_widget.dart';
import 'package:danboVideo/app/tab_page.dart';
import 'package:danboVideo/modules/category/category_module.dart';
import 'package:danboVideo/modules/home/home_module.dart';
import 'package:danboVideo/modules/me/me_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
    
  ];

  @override
  List<ModularRouter> get routers => [
    ModularRouter(Modular.initialRoute, child: (ctx, arg) => TabPage()),
    ModularRouter('/home', module: HomeModule()),
    ModularRouter('/category', module: CategoryModule()),
    ModularRouter('/me', module: MeModule()),
  ];

  @override
  Widget get bootstrap => AppWidget();
}