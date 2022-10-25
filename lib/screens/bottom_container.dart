import 'package:flutter/material.dart';

class BottomContainer extends StatefulWidget {
  const BottomContainer({Key? key}) : super(key: key);

  @override
  State<BottomContainer> createState() => _BottomContainerState();
}

class _BottomContainerState extends State<BottomContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: const BoxDecoration(
        border: Border.fromBorderSide(BorderSide(color: Colors.black26)),
        color: Colors.white,
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [upperContainer(), middleContainer(), lowerContainer()]),
    );
  }

  upperContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
    Text(
      "My Order".toUpperCase(),
      style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
    ),
    SizedBox(
      width: MediaQuery.of(context).size.width * 0.45,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
              onTap: () {},
              child: Container(
                height: 25,
                padding: EdgeInsets.symmetric(horizontal: 10),
                // width: 60,
                color: Colors.teal,
                child: const Center(
                    child: Text(
                  "Edit",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.white),
                )),
              )),
          InkWell(
            onTap: () {},
            child: Container(
                height: 25,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                // width: 60,
                color: Colors.teal,
                child: const Center(
                    child: Text(
                  "View My Order",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.white),
                ))),
          ),
        ],
      ),
    )
      ],
    );
  }

  middleContainer() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.03,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          "Tax: ${String.fromCharCodes(new Runes('\u0024'))}0.05",
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
        ),
        const VerticalDivider(color: Colors.black, thickness: 2),
        Text(
          "Total: ${String.fromCharCodes(new Runes('\u0024'))}8.05",
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
        ),
        const VerticalDivider(color: Colors.black, thickness: 2),
        const Text(
          "Items: 1",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
        )
      ]),
    );
  }

  lowerContainer() {
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        InkWell(
            onTap: () {},
            child: Container(
                height: MediaQuery.of(context).size.width * 0.08,
                width: MediaQuery.of(context).size.width * 0.45,
                color: Colors.red,
                child: const Center(
                    child: Text(
                  "Cancel",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.white),
                )))),
        InkWell(
            onTap: () {},
            child: Container(
                height: MediaQuery.of(context).size.width * 0.08,
                width: MediaQuery.of(context).size.width * 0.45,
                color: Colors.teal,
                child: const Center(
                    child: Text(
                  "Order Now",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.white),
                )))),
      ]),
    );
  }
}
