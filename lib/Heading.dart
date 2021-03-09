import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String mainTitle;
  final String subTitle;

  Heading({@required this.mainTitle, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 24),
      child: Card(
        color: Colors.blueGrey.shade700,
        elevation: 24,
        shadowColor: Colors.blueGrey.shade900,
        child: Padding(
          padding: EdgeInsets.only(left: 24, right: 24, top: 12, bottom: 12),
          child: Column(
            children: [
              Text(
                mainTitle,
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey.shade100,
                ),
              ),
              Text(
                subTitle,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blueGrey.shade100,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
