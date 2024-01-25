import 'package:flutter/material.dart';
import 'package:maze/maze.dart';

class FindPage extends StatefulWidget {
  FindPage({Key? key}) : super(key: key);

  @override
  _FindPageState createState() => _FindPageState();
}

class _FindPageState extends State<FindPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Maze(player: MazeItem( 
        'https://cdn-icons-png.flaticon.com/128/11432/11432014.png',
        ImageType.network,
      ),
      columns: 6,
      rows:12,
      wallThickness: 4.0,
      wallColor: Theme.of(context).primaryColor,
      finish: MazeItem( 
        'https://cdn-icons-png.flaticon.com/128/5551/5551979.png',
        ImageType.network
      ),
      // ignore: avoid_print
      onFinish: () => print("Game Finished"),
      ),
      ),
    );
  }
}
