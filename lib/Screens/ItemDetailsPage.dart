import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/Models/Inscription.dart';
import 'package:project1/Models/game.dart';

import 'InscriptionPage.dart';

class ItemDetailsPage extends StatelessWidget {
  final Game game; // Use the Game model for details

  const ItemDetailsPage(this.game);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(game.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/${game.image}"),
          Text(
            game.desc,
            style: const TextStyle(color: Colors.black, fontSize: 16),
          ),
          Text(
            "${game.price.floor().toString()} TND",
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 50,
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InscriptionPage()),
              );
            },
            icon: const Icon(Icons.shopping_cart),
            label: Text("Acheter"),
          ),
        ],
      ),
    );
  }
}
