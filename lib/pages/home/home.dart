import 'dart:io' show Platform;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_and_app/core/res/colors.dart';
import 'package:flutter_web_and_app/core/widget/nav_bar.dart';
import 'package:route_map/route_map.dart';

@RouteMap()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return Scaffold(
        backgroundColor: AppColors.albescentWhite,
        body: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height / 15),
            const NavBar(),
            Container(
              color: AppColors.black,
            ),
          ],
        ),
      );
    } else if (Platform.isAndroid || Platform.isIOS) {
      return Scaffold(
        appBar: AppBar(title: const Text("Deneme")),
        body: Column(
          children: [
            Container(
              color: AppColors.red,
            ),
          ],
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(title: const Text("Deneme")),
      body: Column(
        children: [
          const NavBar(),
          Container(
            color: AppColors.black,
            child: const Text("Platform bulunamadı"),
          ),
        ],
      ),
    );
  }
}
