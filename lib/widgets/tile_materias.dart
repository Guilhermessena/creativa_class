import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TileMaterias extends StatelessWidget {
  const TileMaterias(
      {super.key, required this.nomeMateria, required this.iconeMateria});
  final String nomeMateria;
  final IconData iconeMateria;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed("/materiaPage");
      },
      child: Card(
        margin: const EdgeInsets.only(
          bottom: 10,
        ),
        elevation: 2,
        shadowColor: Colors.grey,
        child: Container(
          width: 409,
          height: 89,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(19),
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              Expanded(
                flex: 1,
                child: FaIcon(
                  iconeMateria,
                  size: 55,
                  color: const Color(0xffffc736),
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  nomeMateria,
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
