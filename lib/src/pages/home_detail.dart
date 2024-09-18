import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_onepice/src/animations/blur_animation.dart';
import 'package:flutter_onepice/src/widgets/info_widget.dart';

class MyHomeDetail extends StatelessWidget {
  const MyHomeDetail(
      {super.key,
      required this.color,
      required this.image,
      required this.nombre});
  final String image;
  final int color;
  final String nombre;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(color), Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 60.0),
                  child: SizedBox(
                    height: 500.0,
                    child: Image.asset(image),
                  ),
                ),
                Positioned(
                    bottom: 10,
                    left: 10,
                    child: BlurAnimation(
                      animacionBlur: Container(
                        width: 160,
                        height: 70,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white.withOpacity(0.1)),
                        child: Text(
                          nombre,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    ))
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "$nombre #Personaje",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "Jujutsu Kaisen",
                style: TextStyle(color: Colors.white70),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InfoTitle(
                      title: "AUTOR", subTitle: "GEGE AKUTAME EL GATO CICLOPE")
                ],
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () => {Navigator.pop(context)},
              child: Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(color)),
                child: const Text(
                  "Volver",
                  style: TextStyle(
                      color: Colors.white60,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
