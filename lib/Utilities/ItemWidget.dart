import 'package:flutter/material.dart';
import 'package:my_app/Screen/receiptScreen.dart';

class ItemWidget extends StatelessWidget {
  final String imagePath;
  final String name;
  final String dateTime;
  final double value;

  const ItemWidget({
    required this.imagePath,
    required this.name,
    required this.dateTime,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(imagePath),
      ),
      title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            dateTime,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          )
        ],
      ),
      trailing: Text(
          "${value >= 0 ? '+' : value == 0 ? "" : ''}$value",
        style: TextStyle(
          color: value >= 0 ? Colors.green : value == 0 ? Colors.grey : Colors.red,
         fontSize: 18
        ),
      ),
        onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ReceiptScreen(
            imagePath: imagePath,
            name: name,
            dateTime: dateTime,
            value: value,
          )),
        );
      },
    );
  }
}