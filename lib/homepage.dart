import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePageSCreen extends StatefulWidget {
  const HomePageSCreen({super.key});

  @override
  State<HomePageSCreen> createState() => _HomePAgeSCreenState();
}

class _HomePAgeSCreenState extends State<HomePageSCreen> {
  // String? displayExOh;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[800],
        body: GridView.builder(
            itemCount: 9,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                child: Center(
                  child: Text(
                    index.toString(),
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              );
            }));
  }
}
