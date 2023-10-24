import 'package:flutter/material.dart';
import 'package:flutter_web_and_app/core/res/colors.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width / 8,
        color: AppColors.white,
        child: Row(
          children: [
            Image.asset("assets/Logo.png"),
            TextFormField(
                decoration: const InputDecoration(
                    labelText: "Arama", prefixIcon: Icon(Icons.search))),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.location_on),
                label: const Text("Konum"))
          ],
        ),
      ),
    );
  }
}
