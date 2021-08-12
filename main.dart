import 'package:chat_app_ui/favorites.dart';
import 'package:chat_app_ui/messages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'mainOptions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat',
      theme:
          ThemeData(primaryColor: Colors.red, accentColor: Color(0xFFFEF9EB)),
      home: MyHomePage(title: 'Chat'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class MessagesFormat{
  final context;
  final time;
  final sender;
  final isNew;

  MessagesFormat({required this.context,required this.time,required this.sender,required this.isNew});
}
class _MyHomePageState extends State<MyHomePage> {
  var mainMenu = ["Messages", "Online", "Groups", "Close Friends"];
  var favoriteContacts = [
    "Greg",
    "James",
    "John",
    "Olivia",
    "Sam",
    "Sophia",
    "Steven",
    "Mother",
    "Beauty",
    "Stephan",
    "Margaret"
  ];
  var messages = [
    MessagesFormat(context: "Hello long time no see",time: "20.12",sender: "Sophia",isNew: false),
    MessagesFormat(context: "I have waited for you enough, i guess you are not going to come",time: "3.10",sender: "Sam",isNew: true),
    MessagesFormat(context: "Have you checked new star wars movie ? it was horseshit",time: "15.09",sender: "James",isNew: true),
    MessagesFormat(context: "Hello Michael, how were you been, are you feeling better ?",time: "9.12",sender: "John",isNew: false),
    MessagesFormat(context: "Have you watched the E3 ?",time: "7.12",sender: "Steven",isNew: false),
    MessagesFormat(context: "Do you know the number of Jessica ?",time: "23.12",sender: "Greg",isNew: true),
    MessagesFormat(context: "Cmon bro don't ignore me!",time: "00.12",sender: "James",isNew: true),MessagesFormat(context: "Cmon bro don't ignore me!",time: "00.12",sender: "James",isNew: true),MessagesFormat(context: "Cmon bro don't ignore me!",time: "00.12",sender: "James",isNew: true),MessagesFormat(context: "Cmon bro don't ignore me!",time: "00.12",sender: "James",isNew: true),MessagesFormat(context: "Cmon bro don't ignore me!",time: "00.12",sender: "James",isNew: true),MessagesFormat(context: "Cmon bro don't ignore me!",time: "00.12",sender: "James",isNew: true),MessagesFormat(context: "Cmon bro don't ignore me!",time: "00.12",sender: "James",isNew: true),MessagesFormat(context: "Cmon bro don't ignore me!",time: "00.12",sender: "James",isNew: true),MessagesFormat(context: "Cmon bro don't ignore me!",time: "00.12",sender: "James",isNew: true),MessagesFormat(context: "Cmon bro don't ignore me!",time: "00.12",sender: "James",isNew: true),MessagesFormat(context: "Cmon bro don't ignore me!",time: "00.12",sender: "James",isNew: true),MessagesFormat(context: "Cmon bro don't ignore me!",time: "00.12",sender: "James",isNew: true),MessagesFormat(context: "Cmon bro don't ignore me!",time: "00.12",sender: "James",isNew: true),MessagesFormat(context: "Cmon bro don't ignore me!",time: "00.12",sender: "James",isNew: true),MessagesFormat(context: "Cmon bro don't ignore me!",time: "00.12",sender: "James",isNew: true),MessagesFormat(context: "Cmon bro don't ignore me!",time: "00.12",sender: "James",isNew: true),MessagesFormat(context: "Cmon bro don't ignore me!",time: "00.12",sender: "James",isNew: true),MessagesFormat(context: "Cmon bro don't ignore me!",time: "00.12",sender: "James",isNew: true),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {},
            )),
        actions: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.search)))
        ],
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(children: [
        SizedBox(
          height: 100,
          child: (Options(list: mainMenu)),
        ),
        Expanded(
          child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              child: Container(
                  color: Theme.of(context).accentColor,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0, left: 30),
                            child: Text(
                              "Favorite Contacts",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.blueGrey.shade700),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0, right: 30),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.more_horiz_sharp,
                                  size: 35,
                                )),
                          )
                        ],
                      ),
                      SizedBox(
                          height: 120,
                          child: Favorites(list: favoriteContacts)),
                      Expanded(
                          child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  topRight: Radius.circular(40)),
                              child: Container(
                                color: Colors.white,
                                child: Messages(mes: messages,),
                              )))
                    ],
                  ))),
        ),
      ]),
    );
  }
}
