import 'package:flutter/material.dart';
class ItemModel {
    ItemModel({
        this.itemName,
        this.amount,
        this.description,
    });

    String? itemName;
    double? amount;
    String? description;

    factory ItemModel.fromJson(Map<String, dynamic> json) => ItemModel(
        itemName: json["itemName"],
        amount: json["amount"].toDouble(),
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "itemName": itemName,
        "amount": amount,
        "description": description,
    };
}
