import 'package:flutter/material.dart';

class TileResposta extends StatelessWidget {
  const TileResposta(
      {super.key, required this.corResposta, required this.resposta});
  final Color corResposta;
  final String resposta;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(
        bottom: 15,
      ),
      elevation: 4,
      shadowColor: Colors.black,
      child: Container(
        padding: const EdgeInsets.all(20),
        width: 357,
        decoration: BoxDecoration(
          color: corResposta,
          borderRadius: BorderRadius.circular(17),
        ),
        child: Text(
          resposta,
          style: const TextStyle(
            color: Colors.black,
            fontFamily: "Inter",
            fontWeight: FontWeight.w400,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
