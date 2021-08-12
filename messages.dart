import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Messages extends StatefulWidget {
  final mes;
  const Messages({Key? key, required this.mes}) : super(key: key);
  @override
  _MessagesState createState() => _MessagesState(messages: mes);
}

class _MessagesState extends State<Messages> {
  final messages;
  _MessagesState({required this.messages});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, idx) {
          if(idx>1){
            return messages[idx - 1].sender != messages[idx].sender ? ClipRRect(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  bottomRight: Radius.circular(40)),
              child: Container(
                color: messages[idx].isNew
                    ? Color.fromRGBO(255, 245, 246, 1)
                    : Colors.white,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(
                            messages[idx].sender.toLowerCase() + ".jpg"),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: Get.width - 130,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 10),
                                child: Text(
                                  messages[idx].sender,
                                  style: TextStyle(color: Colors.blueGrey),
                                ),
                              ),
                              Text(messages[idx].time,
                                  style: TextStyle(color: Colors.blueGrey))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 8, left: 10, right: 0),
                          child: Expanded(
                            child: messages[idx].context
                                .toString()
                                .length < 30 ? Text(messages[idx].context,
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black87)) :
                            Text(messages[idx].context.toString().substring(
                                0, 29) + "...",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black87)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ) : Column();
          }else {
            return ClipRRect(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  bottomRight: Radius.circular(40)),
              child: Container(
                color: messages[idx].isNew
                    ? Color.fromRGBO(255, 245, 246, 1)
                    : Colors.white,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(
                            messages[idx].sender.toLowerCase() + ".jpg"),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: Get.width - 130,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 10),
                                child: Text(
                                  messages[idx].sender,
                                  style: TextStyle(color: Colors.blueGrey),
                                ),
                              ),
                              Text(messages[idx].time,
                                  style: TextStyle(color: Colors.blueGrey))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 8, left: 10, right: 0),
                          child: Expanded(
                            child: messages[idx].context
                                .toString()
                                .length < 30 ? Text(messages[idx].context,
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black87)) :
                            Text(messages[idx].context.toString().substring(
                                0, 29) + "...",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black87)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }
        });
  }
}
