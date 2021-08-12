import 'package:flutter/material.dart';

class Options extends StatefulWidget {
  final list;
  const Options({Key? key, required this.list}) : super(key: key);
  @override
  _OptionsState createState() => _OptionsState(menu: list);
}

class _OptionsState extends State<Options> {
  final menu;
  int selected = 0;
  void changeSelected(int idx) {
    setState(() {
      selected = idx;
    });
  }

  _OptionsState({required this.menu});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: menu.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                changeSelected(index);
              },
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25.0, vertical: 25),
                  child: selected == index ? Text(
                    menu[index],
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ):Text(
                    menu[index],
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white60),
                  )));
        });
  }
}
