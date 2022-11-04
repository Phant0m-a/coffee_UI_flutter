// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:coffee/pages/coffee_pill.dart';
import 'package:coffee/widgets/coffee_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.person),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: '',
        ),
      ]),
      body: Column(
        children: [
          //headline
          Padding(
            padding: const EdgeInsets.only(left:15.0),
            child: Text(
              'FIND THE BEST COFFEE FOR YOU',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          //sizedbox
          SizedBox(
            height: 10,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0),
            child: TextField(
                decoration: InputDecoration(
              hintText: 'Search for coffee..',
              prefixIcon: Icon(Icons.search),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.grey.shade600,
              )),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.grey.shade600,
              )),
            )),
          ),
       
          //sizedbox
          SizedBox(
            height: 15,
          ),
          

          // Horizontal listwiew tiles coffee 
          Container(height: 30,child: ListView(

            scrollDirection: Axis.horizontal,
            children: [
                CoffeePill(coffee_name: 'Latte'),
                CoffeePill(coffee_name: 'Capputino'),
                CoffeePill(coffee_name: 'Black'),
            ],
          ),),

          //sizedbox
          SizedBox(
            height: 5,
          ),

          Expanded(child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
            CoffeeCard(),
            CoffeeCard()
            ],
          ))
        ],
      ),
    );
  }
}
