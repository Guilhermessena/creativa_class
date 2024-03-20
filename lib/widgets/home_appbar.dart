import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xfff4382f),
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          Expanded(flex: 1, child: Container()),
          const Text(
            'Creativa Class',
            style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          Expanded(flex: 1, child: Container()),
          const badges.Badge(
            badgeContent: Text(
              "3",
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            badgeStyle: badges.BadgeStyle(
              badgeColor: Colors.white,
              padding: EdgeInsets.all(7),
            ),
            child: Icon(
              Icons.notification_add_outlined,
              size: 32,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
