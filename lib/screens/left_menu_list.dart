import 'package:demo/models/menu_model.dart';
import 'package:flutter/material.dart';

class LeftMenuList extends StatefulWidget {
  @override
  State<LeftMenuList> createState() => _LeftMenuListState();
}

class _LeftMenuListState extends State<LeftMenuList> {
  List<MenuModel> localList = [
    MenuModel(
        itemName: "Big Wig Tacos Burger",
        url:
            "https://media.istockphoto.com/photos/pepperoni-pizza-picture-id1373129580"),
    MenuModel(
        itemName: "Juice Bar",
        url:
            "https://media.istockphoto.com/photos/pepperoni-pizza-picture-id1373129580"),
    MenuModel(
        itemName: "Bottled Beers",
        url:
            "https://media.istockphoto.com/photos/pepperoni-pizza-picture-id1373129580"),
    MenuModel(
        itemName: "Cocktails",
        url:
            "https://media.istockphoto.com/photos/pepperoni-pizza-picture-id1373129580"),
    MenuModel(
        itemName: "Big Wig Tacos Burger",
        url:
            "https://media.istockphoto.com/photos/pepperoni-pizza-picture-id1373129580"),
    MenuModel(
        itemName: "Juice Bar",
        url:
            "https://media.istockphoto.com/photos/pepperoni-pizza-picture-id1373129580"),
    MenuModel(
        itemName: "Bottled Beers",
        url:
            "https://media.istockphoto.com/photos/pepperoni-pizza-picture-id1373129580"),
    MenuModel(
        itemName: "Cocktails",
        url:
            "https://media.istockphoto.com/photos/pepperoni-pizza-picture-id1373129580"),
    MenuModel(
        itemName: "Big Wig Tacos Burger",
        url:
            "https://media.istockphoto.com/photos/pepperoni-pizza-picture-id1373129580"),
    MenuModel(
        itemName: "Juice Bar",
        url:
            "https://media.istockphoto.com/photos/pepperoni-pizza-picture-id1373129580"),
    MenuModel(
        itemName: "Bottled Beers",
        url:
            "https://media.istockphoto.com/photos/pepperoni-pizza-picture-id1373129580"),
    MenuModel(
        itemName: "Cocktails",
        url:
            "https://media.istockphoto.com/photos/pepperoni-pizza-picture-id1373129580"),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: localList.map((e) {
          return InkWell(onTap: () {}, child: containerWidget(e));
        }).toList(),
      ),
    );
  }

  Widget containerWidget(MenuModel model) {
    return Card(
      elevation: 1,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.16,
        width: MediaQuery.of(context).size.width * 0.23,
        child: Column(children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(model.url ?? ""), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.teal, width: 2)),
          ),
          SizedBox(
            width: 70,
            child: Text(
              model.itemName ?? "",
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                  letterSpacing: 0.6),
            ),
          ),
        ]),
      ),
    );
  }
}
