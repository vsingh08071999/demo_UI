
class MenuModel {
    MenuModel({
        this.itemName,
        this.url,
    });

    String? itemName;
    String? url;

    factory MenuModel.fromJson(Map<String, dynamic> json) => MenuModel(
        itemName: json["itemName"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "itemName": itemName,
        "url": url,
    };
}
