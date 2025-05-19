import 'package:flutter/material.dart';
import 'package:pharmacy_ui/constants.dart';

class MenuItems extends StatelessWidget {
  const MenuItems(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.price});

  final String image;
  final String title;
  final String subtitle;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      height: 330,
      decoration: BoxDecoration(
        color: itemsColor,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            image,
            fit: BoxFit.contain,
            width: 270,
            height: 200,
          ),
          const SizedBox(height: 5),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                title,
                overflow: TextOverflow.ellipsis, // Add this line
                maxLines: 1,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                subtitle,
                overflow: TextOverflow.ellipsis, // Add this line
                maxLines: 1,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              const SizedBox(width: 20),
              Text(
                price,
                overflow: TextOverflow.ellipsis, // Add this line
                maxLines: 1,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );

    // CustomScrollView(
    //   slivers: [

    //   ],
    // ),
  }
}
