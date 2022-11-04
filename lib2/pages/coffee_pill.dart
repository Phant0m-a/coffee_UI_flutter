import 'package:flutter/material.dart';

class CoffeePill extends StatelessWidget {
  final String coffee_name;

  const CoffeePill({required this.coffee_name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25),
      child: Text(
        coffee_name,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.orange,
        ),
      ),
    );
  }
}
