// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// RouteMapConfigGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:route_map/route_map.dart';
import 'package:flutter_web_and_app/pages/home/home.dart';

class RouteMaps {
  static const String homeRoute = "/home_page";
}

Map<String, RouteModel> get routes => _routes;
final Map<String, RouteModel> _routes = {
  RouteMaps.homeRoute: RouteModel(
    (_) => const HomePage(),
  ),
};
Route? $onGenerateRoute(RouteSettings routeSettings,
        {String? Function(String routeName)? redirect}) =>
    onGenerateRouteWithRoutesSettings(
      routeSettings,
      routes,
      redirect: redirect,
    );

class HomeRoute extends BaseRoute {
  HomeRoute() : super(RouteMaps.homeRoute);
  static const String name = RouteMaps.homeRoute;
}
