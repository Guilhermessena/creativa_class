import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TileAvisos extends StatelessWidget {
  const TileAvisos(
      {super.key, required this.iconeAviso, required this.nomeAviso});
  final IconData iconeAviso;
  final String nomeAviso;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .18,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                color: const Color(0xff2C7EF4).withOpacity(0.54),
                borderRadius: BorderRadius.circular(15)),
            child: FaIcon(
              iconeAviso,
              size: 60,
            ),
          ),
          Text(
            nomeAviso,
            style: const TextStyle(
              color: Colors.black,
              fontFamily: "Inter",
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
