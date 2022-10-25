import 'package:demo/models/item_model.dart';
import 'package:flutter/material.dart';

class MiddleListScreen extends StatefulWidget {
  @override
  State<MiddleListScreen> createState() => _MiddleListScreenState();
}

class _MiddleListScreenState extends State<MiddleListScreen> {
  List<ItemModel> localList = [
    ItemModel(
        itemName: "Capellini Classico",
        amount: 5.00,
        description: "Angel Hir Paste, Served With erm, Vermont Goat Cheese."),
    ItemModel(
        itemName: "Rigatoni Melonjana",
        amount: 4.00,
        description: "Angel Hir Paste, Served With erm, Vermont Goat Cheese."),
    ItemModel(
        itemName: "Linguine Nostra",
        amount: 7.00,
        description: "Angel Hir Paste, Served With erm, Vermont Goat Cheese."),
    ItemModel(
        itemName: "Roast Turkey Wrap",
        amount: 8.00,
        description: "Angel Hir Paste, Served With erm, Vermont Goat Cheese."),
    ItemModel(
        itemName: "Capellini Classico",
        amount: 5.00,
        description: "Angel Hir Paste, Served With erm, Vermont Goat Cheese."),
    ItemModel(
        itemName: "Rigatoni Melonjana",
        amount: 4.00,
        description: "Angel Hir Paste, Served With erm, Vermont Goat Cheese."),
    ItemModel(
        itemName: "Linguine Nostra",
        amount: 7.00,
        description: "Angel Hir Paste, Served With erm, Vermont Goat Cheese."),
    ItemModel(
        itemName: "Roast Turkey Wrap",
        amount: 8.00,
        description: "Angel Hir Paste, Served With erm, Vermont Goat Cheese."),
    ItemModel(
        itemName: "Capellini Classico",
        amount: 5.00,
        description: "Angel Hir Paste, Served With erm, Vermont Goat Cheese."),
    ItemModel(
        itemName: "Rigatoni Melonjana",
        amount: 4.00,
        description: "Angel Hir Paste, Served With erm, Vermont Goat Cheese."),
    ItemModel(
        itemName: "Linguine Nostra",
        amount: 7.00,
        description: "Angel Hir Paste, Served With erm, Vermont Goat Cheese."),
    ItemModel(
        itemName: "Roast Turkey Wrap",
        amount: 8.00,
        description: "Angel Hir Paste, Served With erm, Vermont Goat Cheese."),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            "Non Veg Pizza",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 28),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: localList.map((e) {
              return containerWidget(e);
            }).toList(),
          )
        ]),
      ),
    );
  }

  Widget containerWidget(ItemModel model) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.itemName ?? "",
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        letterSpacing: 0.6),
                  ),
                  Text(
                    String.fromCharCodes(Runes('\u0024')) +
                        model.amount!.toStringAsFixed(2).toString(),
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    model.description ?? "",
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                        letterSpacing: 0.8),
                  ),
                ]),
          ),
          InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey.shade300, width: 1)),
                child: const Material(
                  color: Colors.transparent,
                  child: Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.teal,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
