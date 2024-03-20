
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeBottomnavbar extends StatelessWidget {
  const HomeBottomnavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      decoration: const BoxDecoration(
        color: Color(0xfff8f8f8),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.home,
            size: 30,
            color: Color(0xfff4382f),
          ),
          FaIcon(
            FontAwesomeIcons.rankingStar,
            size: 30,
            color: Color(0xfff4382f),
          ),
          Icon(
            Icons.settings,
            size: 30,
            color: Color(0xfff4382f),
          ),
        ],
      ),
    );
  }
}
