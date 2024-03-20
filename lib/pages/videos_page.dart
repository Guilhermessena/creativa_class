import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class VideosPage extends StatelessWidget {
  const VideosPage({super.key});

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
            'Videos',
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
                  minHeight: sizeOf.height, maxWidth: sizeOf.width),
              padding: const EdgeInsets.only(top: 15),
              decoration: const BoxDecoration(
                color: Color(0xffedecf2),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      child: Text(
                        'Introdução à Teoria dos Conjuntos',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    onTap: () => launchUrlString(
                        'https://youtu.be/2g0o0lzQin8?si=hEUj8JmN_Kb6aa1T'),
                  ),
                  InkWell(
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      child: Text(
                        'Conjunto Unitário, Conjunto Vazio e Conjunto Universo',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    onTap: () => launchUrlString(
                        'https://youtu.be/sA8Tc8usRzU?si=PImytMfJFQlnSBaA'),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
