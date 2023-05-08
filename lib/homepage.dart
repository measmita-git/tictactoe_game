import 'package:flutter/material.dart';

class HomePageSCreen extends StatefulWidget {
  const HomePageSCreen({super.key});

  @override
  State<HomePageSCreen> createState() => _HomePAgeSCreenState();
}

class _HomePAgeSCreenState extends State<HomePageSCreen> {
  bool ohTurn = true;
  List<String> displayExOh = ['', '', '', '', '', '', '', '', ''];
  void _tapped(int index) {
    setState(() {
      if (ohTurn) {
        displayExOh[index] = 'O';
      } else {
        displayExOh[index] = 'X';
      }
      ohTurn != ohTurn;
      _checkWinner();
    });
  }

  void _checkWinner() {
    if (displayExOh[0] == displayExOh[1] &&
        displayExOh[0] == displayExOh[2] &&
        displayExOh[0] != '') {
      showWinDialog();
    }
    if (displayExOh[4] == displayExOh[5] &&
        displayExOh[4] == displayExOh[6] &&
        displayExOh[4] != '') {
      showWinDialog();
    }
    if (displayExOh[7] == displayExOh[8] &&
        displayExOh[7] == displayExOh[9] &&
        displayExOh[7] != '') {
      showWinDialog();
    }
    if (displayExOh[1] == displayExOh[5] &&
        displayExOh[1] == displayExOh[9] &&
        displayExOh[9] != '') {
      showWinDialog();
    }
    if (displayExOh[3] == displayExOh[5] &&
        displayExOh[3] == displayExOh[7] &&
        displayExOh[3] != '') {
      showWinDialog();
    }
    if (displayExOh[1] == displayExOh[4] &&
        displayExOh[1] == displayExOh[7] &&
        displayExOh[1] != '') {
      showWinDialog();
    }
    if (displayExOh[2] == displayExOh[5] &&
        displayExOh[2] == displayExOh[8] &&
        displayExOh[2] != '') {
      showWinDialog();
    }
    if (displayExOh[3] == displayExOh[6] &&
        displayExOh[3] == displayExOh[9] &&
        displayExOh[6] != '') {
      showWinDialog();
    }
  }

  void showWinDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("WINNER!"),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: GridView.builder(
          itemCount: 9,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: (() {
                  _tapped(index);
                }),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
                  ),
                  child: Center(
                    child: Text(
                      displayExOh[index],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                      ),
                    ),
                  ),
                ));
          }),
    );
  }
}
