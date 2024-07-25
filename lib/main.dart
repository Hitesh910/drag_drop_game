import 'package:drag_drop_game/screen/home/provider/home_provider.dart';
import 'package:drag_drop_game/screen/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding();
   // SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
  runApp(
    MultiProvider(providers: [ChangeNotifierProvider.value(value: HomeProvider())],child: MaterialApp(
      routes: app_routes,
    ),)
    // MaterialApp(
    //   routes: app_routes,
    // ),
  );
}
