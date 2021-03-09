import 'package:chouette/draw_board.dart';
import 'package:chouette/score_board.dart';
import 'package:flutter/material.dart';
import 'package:chouette/Player.dart';

List<Player> players = [
  Player("pl1"),
  Player("pl2"),
  Player("pl3"),
  Player("pl4"),
  Player("pl5"),
  Player("pl6"),
  Player("pl7"),
  Player("pl8")
];

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("Chouette Backgammon Manager"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          //child: DrawBoard(players: players),
          child: ScoreBoard(players: players),
        ),
      ),
    ),
  );
}
