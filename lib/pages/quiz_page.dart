import 'package:creativa_class/widgets/tile_resposta.dart';
import 'package:flutter/material.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

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
          title: const Text(
            'Quiz',
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Inter",
              fontWeight: FontWeight.w400,
              fontSize: 32,
            ),
          )),
      body: ListView(
        children: [
          Container(
            constraints: BoxConstraints(
              minHeight: sizeOf.height,
              maxWidth: sizeOf.width,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            decoration: const BoxDecoration(
              color: Color(0xffedecf2),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '1 de 5',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                Container(
                  height: MediaQuery.sizeOf(context).height * .8,
                  width: MediaQuery.sizeOf(context).width * .9,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13)),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          'Qual das seguintes afirmações é falsa sobre conjuntos?',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          const TileResposta(
                            corResposta: Color(0xffeb3939),
                            resposta:
                                'A) Um conjunto pode conter elementos repetidos.',
                          ),
                          const TileResposta(
                            corResposta: Colors.white,
                            resposta:
                                'B) O conjunto vazio é um subconjunto de qualquer conjunto.',
                          ),
                          TileResposta(
                            corResposta:
                                const Color(0xff9adbac).withOpacity(.63),
                            resposta:
                                'C) A ordem dos elementos em um conjunto é importante.',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
