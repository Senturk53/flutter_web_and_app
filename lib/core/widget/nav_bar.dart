import 'package:flutter/material.dart';
import 'package:flutter_web_and_app/core/res/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return ScreenTypeLayout(
      mobile: mobileNavBar(),
      desktop: webNavBar(),
    );
  }
}

Widget mobileNavBar() {
  return AppBar(
    title: Row(
      children: [
        IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        const Image(
          image: AssetImage("assets/logo.png"),
          fit: BoxFit.cover,
          height: 75,
        )
      ],
    ),
  );
}

Widget webNavBar() {
  return Container(
      color: AppColors.white,
      child: Row(children: [
        Expanded(
          flex: 2,
          child: InkWell(
            child: const Image(image: AssetImage("assets/logo.png")),
            onTap: () {},
          ),
        ),
        Expanded(
            flex: 6,
            child: TextFormField(
                decoration: const InputDecoration(
                    labelText: "Arama", prefixIcon: Icon(Icons.search)))),
        Expanded(
          child: TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.location_on),
              label: const FittedBox(fit: BoxFit.cover, child: Text("Konum"))),
        ),
        Expanded(
          child: ListTile(
            onTap: () {},
            leading: const Icon(Icons.person),
            title: const FittedBox(fit: BoxFit.cover, child: Text("Hesabım")),
            subtitle: const FittedBox(
                fit: BoxFit.cover, child: Text("Kullanıcı isminiz")),
          ),
        ),
        Expanded(
            child: ListTile(
                onTap: () {},
                leading: const Icon(Icons.shopping_cart),
                title:
                    const FittedBox(fit: BoxFit.cover, child: Text("Sepet"))))
      ]));
}
