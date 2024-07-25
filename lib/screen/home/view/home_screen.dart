import 'package:drag_drop_game/screen/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? providerR;
  HomeProvider? providerW;

  @override
  Widget build(BuildContext context) {
    providerR = context.read<HomeProvider>();
    providerW = context.watch<HomeProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Game"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Draggable(
                  // axis: Axis.vertical,
                  data: "first",
                  child: Container(
                    // height: 100,
                    // width: 100,
                    child: Text(
                      "😀",
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                  feedback: Container(
                    // height: 100,
                    // width: 100,
                    child: Text(
                      "😀",
                      style: TextStyle(fontSize: 80),
                    ),
                  ),
                  childWhenDragging: Container(
                    // height: 100,
                    // width: 100,
                    child: Text(
                      "😀",
                      style: TextStyle(color: Colors.grey),
                    ),
                    // decoration: BoxDecoration(
                    //     image: DecorationImage(
                    //         image: NetworkImage(
                    //             "https://i.pinimg.com/736x/7d/02/62/7d0262f129965093f414908c7a7f0669.jpg"),
                    //         colorFilter:
                    //             ColorFilter.mode(Colors.grey, BlendMode.clear))),
                  ),
                ),
              ),
              Expanded(
                child: Draggable(
                  // axis: Axis.vertical,
                  data: "second",
                  child: Container(
                    // height: 500,
                    // width: 500,
                    child: Text(
                      "😁",
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                  feedback: Container(
                    // height: 100,
                    // width: 100,
                    child: Text(
                      "😁",
                      style: TextStyle(fontSize: 80),
                    ),
                  ),
                  childWhenDragging: Container(
                    // height: 500,
                    // width: 500,
                    child: Text(
                      "😁",
                      style: TextStyle(color: Colors.grey),
                    ),
                    // decoration: BoxDecoration(
                    //     image: DecorationImage(
                    //         image: NetworkImage(
                    //             "https://i.pinimg.com/736x/7d/02/62/7d0262f129965093f414908c7a7f0669.jpg"),
                    //         colorFilter:
                    //             ColorFilter.mode(Colors.grey, BlendMode.clear))),
                  ),
                ),
              ),
              Expanded(
                child: Draggable(
                  // axis: Axis.vertical,
                  data: "third",
                  child: Container(
                    // height: 500,
                    // width: 500,
                    child: Text(
                      "🙂",
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                  feedback: Container(
                    // height: 100,
                    // width: 100,
                    child: Text(
                      "🙂",
                      style: TextStyle(fontSize: 80),
                    ),
                  ),
                  childWhenDragging: Container(
                    // height: 500,
                    // width: 500,
                    child: Text(
                      "🙂",
                      style: TextStyle(color: Colors.grey),
                    ),
                    // decoration: BoxDecoration(
                    //     image: DecorationImage(
                    //         image: NetworkImage(
                    //             "https://i.pinimg.com/736x/7d/02/62/7d0262f129965093f414908c7a7f0669.jpg"),
                    //         colorFilter:
                    //             ColorFilter.mode(Colors.grey, BlendMode.clear))),
                  ),
                ),
              ),
              Expanded(
                child: Draggable(
                  // axis: Axis.vertical,
                  data: "four",
                  child: Container(
                    // height: 500,
                    // width: 500,
                    child: Text(
                      "😎",
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                  feedback: Container(
                    // height: 100,
                    // width: 100,
                    child: Text(
                      "😎",
                      style: TextStyle(fontSize: 80),
                    ),
                  ),
                  childWhenDragging: Container(
                    // height: 500,
                    // width: 500,
                    child: Text(
                      "😎",
                      style: TextStyle(color: Colors.grey),
                    ),
                    // decoration: BoxDecoration(
                    //     image: DecorationImage(
                    //         image: NetworkImage(
                    //             "https://i.pinimg.com/736x/7d/02/62/7d0262f129965093f414908c7a7f0669.jpg"),
                    //         colorFilter:
                    //             ColorFilter.mode(Colors.grey, BlendMode.clear))),
                  ),
                ),
              ),
              Expanded(
                child: Draggable(
                  // axis: Axis.vertical,
                  data: "five",
                  child: Container(
                    // height: 500,
                    // width: 500,
                    child: Text(
                      "😍",
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                  feedback: Container(
                    // height: 100,
                    // width: 100,
                    child: Text(
                      "😍",
                      style: TextStyle(fontSize: 80),
                    ),
                  ),
                  childWhenDragging: Container(
                    // height: 500,
                    // width: 500,
                    child: Text(
                      "😍",
                      style: TextStyle(color: Colors.grey),
                    ),
                    // decoration: BoxDecoration(
                    //     image: DecorationImage(
                    //         image: NetworkImage(
                    //             "https://i.pinimg.com/736x/7d/02/62/7d0262f129965093f414908c7a7f0669.jpg"),
                    //         colorFilter:
                    //             ColorFilter.mode(Colors.grey, BlendMode.clear))),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              DragTarget(
                builder: (context, candidateData, rejectedData) {
                  return Container(
                      height: 80,
                      width: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(color: Colors.blue),
                      child: providerR!.isEmoji1
                          ? Text(
                              "😀",
                              style: TextStyle(fontSize: 80),
                            )
                          : null);
                },
                onAcceptWithDetails: (data) {
                  providerR!.checkData();
                  SnackBar(
                      content: Text(
                    "Dropped Succesfully",
                    style: TextStyle(fontSize: 50, color: Colors.grey),
                  ));
                },
                onWillAcceptWithDetails: (details) {
                  return details.data == "first";
                },
              ),
              SizedBox(width: 10,),
              DragTarget(
                builder: (context, candidateData, rejectedData) {
                  return Container(
                      height: 80,
                      width: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(color: Colors.blue),
                      child: providerW!.isEmoji2
                          ? Text(
                              "😁",
                              style: TextStyle(fontSize: 80),
                            )
                          : null);
                },
                onAcceptWithDetails: (data) {
                  providerR!.checkData2();
                  SnackBar(
                      content: Text(
                    "Dropped Succesfully",
                    style: TextStyle(fontSize: 50, color: Colors.grey),
                  ));
                },
                onWillAcceptWithDetails: (details) {
                  return details.data == "second";
                },
              ),
              SizedBox(width: 10,),
              DragTarget(
                builder: (context, candidateData, rejectedData) {
                  return Container(
                      height: 80,
                      width: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(color: Colors.blue),
                      child: providerW!.isEmoji3
                          ? Text(
                              "🙂",
                              style: TextStyle(fontSize: 80),
                            )
                          : null);
                },
                onAcceptWithDetails: (data) {
                  providerW!.checkData3();
                  SnackBar(
                      content: Text(
                    "Dropped Succesfully",
                    style: TextStyle(fontSize: 50, color: Colors.grey),
                  ));
                },
                onWillAcceptWithDetails: (details) {
                  return details.data == "third";
                },
              ),
                SizedBox(width: 10,),
              DragTarget(
                builder: (context, candidateData, rejectedData) {
                  return Container(
                      height: 80,
                      width: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(color: Colors.blue),
                      child: providerW!.isEmoji4
                          ? Text(
                              "😎",
                              style: TextStyle(fontSize: 80),
                            )
                          : null);
                },
                onAcceptWithDetails: (data) {
                  providerW!.checkData4();
                  SnackBar(
                      content: Text(
                    "Dropped Succesfully",
                    style: TextStyle(fontSize: 50, color: Colors.grey),
                  ));
                },
                onWillAcceptWithDetails: (details) {
                  return details.data == "four";
                },
              ),
              SizedBox(width: 10,),
              DragTarget(
                builder: (context, candidateData, rejectedData) {
                  return Container(
                      height: 80,
                      width: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(color: Colors.blue),
                      child: providerW!.isEmoji5
                          ? Text(
                              "😍",
                              style: TextStyle(fontSize: 80),
                            )
                          : null);
                },
                onAcceptWithDetails: (data) {
                  providerR!.checkData5();
                  SnackBar(
                      content: Text(
                    "Dropped Succesfully",
                    style: TextStyle(fontSize: 50, color: Colors.grey),
                  ));
                },
                onWillAcceptWithDetails: (details) {
                  return details.data == "five";
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
