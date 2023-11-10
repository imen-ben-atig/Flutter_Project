import 'package:flutter/material.dart';
import 'package:project1/Models/game.dart';

import 'ItemDetailsPage.dart'; // Import the Game model

class Cell extends StatelessWidget {
  // Variables
  final String image;
  final String title;
  final double price;
  final Game game;

  Cell(this.game, {Key? key})
      : image = game.image,
        title = game.title,
        price = game.price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ItemDetailsPage(game),
          ),
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/$image",
                width: 150,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    Text(
                      "${price.floor().toString()} TND",
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
