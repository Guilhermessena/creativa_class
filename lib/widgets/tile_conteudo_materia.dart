import 'package:flutter/material.dart';

class TileConteudoMateria extends StatelessWidget {
  const TileConteudoMateria({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed("/videosPage");
      },
      child: Card(
        margin: const EdgeInsets.only(
          bottom: 10,
        ),
        elevation: 2,
        shadowColor: Colors.black.withOpacity(1),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          width: 400,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: const Column(
            children: [
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.video_collection_outlined,
                        size: 30,
                      )),
                  Expanded(
                    flex: 5,
                    child: Text(
                      'Introdução à Teoria dos Conjuntos',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.video_collection_outlined,
                        size: 30,
                      )),
                  Expanded(
                    flex: 5,
                    child: Text(
                      'Conjunto Unitário, Conjunto Vazio e Conjunto Universo',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
