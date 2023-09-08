import 'package:flutter/material.dart';
import 'package:rocket_app/class/item_class.dart';
import 'package:rocket_app/core/constants.dart';
import 'package:rocket_app/pages/description_page.dart';

class CardWidget extends StatelessWidget {
  CardWidget({
    super.key,
    required this.box,
  });
  final ItemClass box;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DescriptionPage(
                box: box,
              );
            },
          ),
        );
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(kDouble10),
          child: Column(
            children: [
              const SizedBox(height: kDouble5),
              Image.asset(box.imagePath),
              Text(
                box.title,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text('This is the ${box.title} Description'),
              const SizedBox(height: kDouble10),
            ],
          ),
        ),
      ),
    );
  }
}
