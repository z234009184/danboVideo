
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'page/me_page.dart';

class MeModule extends WidgetModule {
  @override
  // TODO: implement binds
  List<Bind> get binds => [

  ];

  @override
  // TODO: implement routers
  List<ModularRouter> get routers => [
    ModularRouter(Modular.initialRoute, child: (context, args) => MePage()),
  ];

  @override
  // TODO: implement view
  Widget get view => MePage();
}