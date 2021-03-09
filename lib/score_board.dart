import 'package:flutter/material.dart';
import 'package:chouette/Player.dart';
import 'Heading.dart';

class ScoreBoard extends StatefulWidget {
  final List<Player> players;

  ScoreBoard({this.players});

  @override
  _ScoreBoard createState() => _ScoreBoard();
}

class _ScoreBoard extends State<ScoreBoard> {
  final List<Player> players;

  _ScoreBoard({this.players});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Heading(
          mainTitle: "Players",
          subTitle: "",
        ),
        Flexible(
          child: ListView(
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: Colors.blueGrey.shade100,
                  leading: Icon(Icons.account_box_outlined, size: 64),
                  title: Text("Title"),
                  subtitle: Text("BOX"),
                  trailing: Text("Points"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: Colors.blueGrey.shade200,
                  leading: Icon(Icons.account_box_outlined, size: 48),
                  title: Text("Title"),
                  subtitle: Text("CAPTAIN"),
                  trailing: Text("Points"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: Colors.blueGrey.shade400,
                  leading: Icon(Icons.account_box_outlined),
                  title: Text("Title"),
                  subtitle: Text("Player #1"),
                  trailing: Text("Points"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: Colors.blueGrey.shade400,
                  leading: Icon(Icons.account_box_outlined),
                  title: Text("Title"),
                  subtitle: Text("Player #2"),
                  trailing: Text("Points"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: Colors.blueGrey.shade400,
                  leading: Icon(Icons.account_box_outlined),
                  title: Text("Title"),
                  subtitle: Text("Player #3"),
                  trailing: Text("Points"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: Colors.blueGrey.shade400,
                  leading: Icon(Icons.account_box_outlined),
                  title: Text("Title"),
                  subtitle: Text("Player #4"),
                  trailing: Text("Points"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: Colors.blueGrey.shade400,
                  leading: Icon(Icons.account_box_outlined),
                  title: Text("Title"),
                  subtitle: Text("Player #5"),
                  trailing: Text("Points"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: Colors.blueGrey.shade400,
                  leading: Icon(Icons.account_box_outlined),
                  title: Text("Title"),
                  subtitle: Text("Player #6"),
                  trailing: Text("Points"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
