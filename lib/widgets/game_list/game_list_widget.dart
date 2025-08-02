import 'package:flutter/material.dart';
import 'package:torrent_igruha/widgets/game_details_widget.dart';

class Game {
  final String image;
  final String name;

  Game({required this.image, required this.name});
}


class GameListWidget extends StatelessWidget {
  final List<Game> gamesList;

  const GameListWidget({super.key, required this.gamesList});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: gamesList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 180 / 360, // 180x300 image + text & margin
            ),
            itemBuilder: (context, index) {
              return _buildGameCard(context, gamesList[index]);
            },
          );
        },
      ),
    );
  }

  Widget _buildGameCard(BuildContext context, Game game) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => GameDetailsWidget(),
                ),
              );
            },
            child: Image.asset(
              game.image,
              width: 180,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          game.name,
          style: const TextStyle(fontSize: 19),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

