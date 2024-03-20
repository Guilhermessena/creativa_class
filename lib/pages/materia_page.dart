import 'package:creativa_class/widgets/tile_conteudo_materia.dart';
import 'package:flutter/material.dart';

class MateriaPage extends StatelessWidget {
  const MateriaPage({super.key});

  @override
  Widget build(BuildContext context) {
    var sizeOf = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(
                Icons.arrow_back_outlined,
                size: 30,
                color: Colors.white,
              )),
          backgroundColor: const Color(0xfff4382f),
          centerTitle: true,
          title: const Icon(
            Icons.quiz_outlined,
            size: 50,
            color: Colors.white,
          )),
      body: ListView(
        children: [
          Container(
            constraints: BoxConstraints(
              minHeight: sizeOf.height,
            ),
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              color: Color(0xffedecf2),
            ),
            child: Column(
              children: [
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
                Column(
                  children: [
                    const TileConteudoMateria(),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed("/quizPage");
                      },
                      child: Card(
                        elevation: 2,
                        shadowColor: Colors.black.withOpacity(1),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                          width: 400,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Icon(
                                    Icons.video_collection_outlined,
                                    size: 30,
                                    color: Color(0xff2C7EF4),
                                  )),
                              Expanded(
                                flex: 5,
                                child: Text(
                                  'Quiz',
                                  style: TextStyle(
                                    color: Color(0xff2C7EF4),
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
