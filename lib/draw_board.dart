import 'package:flutter/material.dart';
import 'package:chouette/Player.dart';
import 'Heading.dart';

enum DiceLocations { NONE, BOX, TEAM }
DiceLocations actualDicePosition = DiceLocations.NONE;
int currentbet = 1;

/*
  Draw the whole board.
  Need a list of players to display.
 */
class DrawBoard extends StatefulWidget {
  final List<Player> players;

  DrawBoard({@required this.players});

  @override
  _DrawBoard createState() => _DrawBoard();
}

class _DrawBoard extends State<DrawBoard> {
  List<Player> players = [];

  _DrawBoard();

  @override
  Widget build(BuildContext context) {
    players = widget.players;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Heading(
          mainTitle: "Let's Play!",
          subTitle: (actualDicePosition != DiceLocations.NONE)
              ? "Current Bet : ${currentbet.toString()}"
              : "",
        ),
        Padding(
            padding: EdgeInsets.only(left: 8, right: 8),
            child: Card(
                color: Colors.blueGrey.shade50,
                elevation: 4,
                shadowColor: Colors.blueGrey.shade900,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        PlayerIcon(
                          icon: Icons.account_box_outlined,
                          size: 72,
                          label: "Box",
                          player: players[0],
                        ),
                        if (actualDicePosition != DiceLocations.TEAM)
                          DrawDice(() {
                            setState(() {
                              currentbet *= 2;
                              actualDicePosition = DiceLocations.TEAM;
                            });
                          }),
                      ],
                    ),
                    Card(
                        margin: EdgeInsets.only(top: 15),
                        shadowColor: Colors.grey.shade900,
                        elevation: 8,
                        child: Image(
                          image: AssetImage("images/board.png"),
                        )),
                    Column(
                      children: [
                        PlayerIcon(
                          icon: Icons.account_box_outlined,
                          size: 72,
                          label: "Captain",
                          player: players[1],
                        ),
                        if (actualDicePosition != DiceLocations.BOX)
                          DrawDice(() {
                            setState(() {
                              currentbet *= 2;
                              actualDicePosition = DiceLocations.BOX;
                            });
                          }),
                      ],
                    ),
                  ],
                ))),
        TeamList(players),
      ],
    );
  }
}

/*
  Draw the line of players in the team
 */
class TeamList extends StatelessWidget {
  final List<Player> players;
  TeamList(this.players);
  @override
  Widget build(BuildContext context) {
    int _index = 0;
    List<Widget> _items = [];
    players.getRange(2, players.length).forEach((player) {
      _index++;
      _items.add(Card(
          color: Colors.blueGrey.shade200,
          elevation: 4,
          shadowColor: Colors.blueGrey.shade900,
          child: PlayerIcon(
            icon: Icons.account_box_outlined,
            size: 36,
            label: "#${_index.toString()}",
            player: player,
          )));
    });
    return Padding(
      padding: EdgeInsets.only(top: 15),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        children: _items,
      ),
    );
  }
}

/*
  Draw a player icon with a label
 */
class PlayerIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final Player player;
  final double size;
  PlayerIcon({this.icon, this.label, this.player, this.size = 24});
  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: "${player.name} : ${player.points} pts",
      child: FlatButton(
        padding: EdgeInsets.all(4),
        onPressed: () {
          // TODO : Dialog Box to change the name of the player
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(this.icon, size: this.size),
            Text(this.label.toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text(player.name),
            Text("XX pts"),
          ],
        ),
      ),
    );
  }
}

/*
  Draw a dice bet
 */
class DrawDice extends StatelessWidget {
  final Function() action;
  DrawDice(this.action);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: action,
      child: Icon(
        Icons.casino_rounded,
        color: Colors.blueGrey[900],
        size: 30,
      ),
    );
    //return Icon(Icons.crop_square_rounded, size: 48);
  }
}
