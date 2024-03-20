import 'package:creativa_class/widgets/home_appbar.dart';
import 'package:creativa_class/widgets/home_bottomnavbar.dart';
import 'package:creativa_class/widgets/tile_avisos.dart';
import 'package:creativa_class/widgets/tile_materias.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var sizeOf = MediaQuery.sizeOf(context);
    return Scaffold(
      body: ListView(
        children: [
          const HomeAppbar(),
          Container(
            constraints: BoxConstraints(
              minHeight: sizeOf.height,
            ),
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              color: Color(0xffedecf2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Buscar',
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TileAvisos(
                      iconeAviso: FontAwesomeIcons.clipboard,
                      nomeAviso: 'Boletim',
                    ),
                    TileAvisos(
                      iconeAviso: FontAwesomeIcons.triangleExclamation,
                      nomeAviso: 'Avisos',
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                  child: const Text(
                    "APRENDENDO E JOGANDO",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                ),
                const Column(
                  children: [
                    TileMaterias(
                      nomeMateria: 'Matemática',
                      iconeMateria: FontAwesomeIcons.squareRootVariable,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: const HomeBottomnavbar(),
    );
  }
}
