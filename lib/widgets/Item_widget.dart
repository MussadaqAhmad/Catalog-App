import 'package:first_app/Models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final item Item;

  const ItemWidget({Key? key, required this.Item})
      : assert(item != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${Item.name}pressed");
        },
        leading: Image.network(Item.image),
        title: Text(Item.name),
        subtitle: Text(Item.desc),
        trailing: Text(
          "\$${Item.price}",
          textScaleFactor: 1.5,
          style:
              TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
