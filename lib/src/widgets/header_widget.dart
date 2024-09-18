import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});
  final tituloTextStyle = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 26);
  final subtituloTextStyle = const TextStyle(color: Colors.white, fontSize: 20);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.all(20),
      height: 140,
      decoration: const BoxDecoration(color: Color.fromARGB(255, 41, 40, 39)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("One piece", style: tituloTextStyle),
              Text(
                "serie",
                style: subtituloTextStyle,
              )
            ],
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(.1),
                    borderRadius: BorderRadius.circular(15)),
                child: IconButton(
                  icon: const Icon(Icons.search, size: 28, color: Colors.white),
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(.1),
                    borderRadius: BorderRadius.circular(15)),
                child: IconButton(
                  icon: const Icon(Icons.notifications_active,
                      size: 28, color: Colors.white),
                  onPressed: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
