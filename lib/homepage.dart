import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePageSCreen extends StatefulWidget {
  const HomePageSCreen({super.key});

  @override
  State<HomePageSCreen> createState() => _HomePAgeSCreenState();
}

class _HomePAgeSCreenState extends State<HomePageSCreen> {
  void _tapped() {
    setState(() {
      displayExOh = 'o';
    });
  }

  String displayExOh = '';
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
                onTap: _tapped,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
                  ),
                  child: Center(
                    child: Text(
                      displayExOh,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              );
            }));
  }
}
