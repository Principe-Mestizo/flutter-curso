import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onepice/src/pages/home_detail.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({super.key});
  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  double screen = 0;
  final tituloStyleText = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white);
  @override
  Widget build(BuildContext context) {
    screen = MediaQuery.of(context).size.width - 50;
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          Text(
            "Portadas",
            style: tituloStyleText,
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              bloquesPortada("portada.png", "Portada", "2004"),
              SizedBox(
                width: screen * 0.03,
              ),
              bloquesPortada("portada.png", "Portada", "2004"),
              SizedBox(
                width: screen * 0.03,
              ),
              bloquesPortada("portada.png", "Portada", "2004")
            ],
          ),
          const Divider(
            thickness: 1,
            height: 60,
            color: Colors.blue,
          ),
          const SizedBox(
            height: 10,
          ),
          bloquePersonajes("Gojo", 0xff21e295, "gojo"),
          bloquePersonajes("Gojo", 0xff21e295, "gojo"),
          bloquePersonajes("Gojo", 0xff21e295, "gojo"),
          bloquePersonajes("Gojo", 0xff21e295, "gojo"),
          bloquePersonajes("Gojo", 0xff21e295, "gojo"),
        ],
      ),
    );
  }

  Widget bloquePersonajes(String name, int color, String image) {
    return GestureDetector(
      onTap: () => {
        Navigator.of(context).push(CupertinoPageRoute(
            builder: ((context) => MyHomeDetail(
                  color: color,
                  image: "assets/$image.png",
                  nombre: name,
                ))))
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromARGB(66, 43, 43, 43)),
        height: 65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        blurRadius: 8,
                        offset: const Offset(0, 5),
                        spreadRadius: 0,
                        color: Color(color),
                        blurStyle: BlurStyle.solid)
                  ], borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.all(8),
                  child: Image.asset("assets/$image.png"),
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                )
              ],
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert_rounded,
                  color: Colors.blue,
                ))
          ],
        ),
      ),
    );
  }

  Widget bloquesPortada(String image, String titulo, String subtitulo) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset(
            "assets/$image",
            width: screen * 0.31,
            height: 110,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        RichText(
          text: TextSpan(
              text: titulo,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 14,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: subtitulo,
                    style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w300,
                        fontSize: 12))
              ]),
        )
      ],
    );
  }
}
