import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Favorites extends StatefulWidget {
  final list;
  const Favorites({Key? key, required this.list}) : super(key: key);
  @override
  _Favorites createState() => _Favorites(menu: list);
}

class _Favorites extends State<Favorites> {
  final menu;
  int selected = 0;
  void changeSelected(int idx) {
    setState(() {
      selected = idx;
    });
  }

  _Favorites({required this.menu});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 0,left: 16),
      shrinkWrap: true,
        itemCount: menu.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: selected == index ? GestureDetector(
              onTap: () {changeSelected(index);},
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage(menu[index].toString().toLowerCase()+".jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13.0),
                    child: Text(menu[index],style: TextStyle(fontSize: 16,color: Colors.black87,),
                  ),
                  )],
              ),
            ):GestureDetector(
              onTap: () {changeSelected(index);},
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage(menu[index].toString().toLowerCase()+".jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13.0),
                    child: Text(menu[index],style: TextStyle(fontSize: 16,color: Colors.blueGrey),),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
