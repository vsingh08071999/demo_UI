import 'dart:io';

import 'package:demo/screens/bottom_container.dart';

import 'package:flutter/material.dart';

import 'left_menu_list.dart';
import 'middle_list.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
      List<int> list = [1, 1, 0, 1, 0, 1, 0, 0, 1];
  List<int> list1 = [1, 2, 3, 4, 5, 6, 7];
  List<int> newList = [];
//   int sum = 9;
//   int low = 0;
  int j = 0;
//   int high = list.length - 1;
//   int n = list.length;
  for (int i = 0; i < list.length; i++) {
    if (list[i] == 0) {
      print("i is ${list[i]}");
      j++;
      newList.add(list[i]);
            print("neweList is ${newList.toString()}");
    }
  }
  print("j is $j");
  while (j < list.length) {
    print("object");
    print("object   ${newList}");
    newList.add(1);
  }
  print("data is ${list.length}");
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Menu",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 25,
                    width: 60,
                    color: Colors.teal,
                    child: Center(
                        child: Text(
                      "back".toUpperCase(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 12),
                    )),
                  ),
                ),
              ],
            ),
          ),
          body: Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LeftMenuList(),
                    const VerticalDivider(
                      color: Colors.black26,
                      thickness: 1,
                    ),
                    MiddleListScreen()
                  ],
                ),
              ),
              const Positioned(
                child: BottomContainer(),
                bottom: 0,
              )
            ],
          )),
    );
  }
}
