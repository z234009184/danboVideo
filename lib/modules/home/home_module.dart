import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_page.dart';

class HomeModule extends WidgetModule {
  @override
  // TODO: implement binds
  List<Bind> get binds => [];

  @override
  // TODO: implement routers
  List<ModularRouter> get routers => [
    ModularRouter(Modular.initialRoute, child: (context, args) => HomePage()),
  ];

  @override
  // TODO: implement view
  Widget get view => HomePage();
}