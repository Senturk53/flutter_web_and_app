import 'package:flutter/material.dart';
import 'package:flutter_web_and_app/app/app.dart';
import 'package:flutter_web_and_app/core/di/locator.dart';
import 'package:injectable/injectable.dart';

void main() async {
  await setupDI(Environment.dev);
  runApp(const MainApp());
}
