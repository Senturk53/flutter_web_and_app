import 'package:flutter/material.dart';
import 'package:flutter_web_and_app/route/route.routes.dart';
import 'package:route_map/route_map.dart';

@RouteMapInit(typeSafe: true)
Route? onGenerateRoute(RouteSettings routeSettings) =>
    $onGenerateRoute(routeSettings);
