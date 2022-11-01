import 'package:flutter/material.dart';

Class HomePage extends StatefulWidget{
	const HomePage({Key: key}): super(Key:key);

	State<HomePage> CreateState() : _HomePageState();
}

Class _HomePageState extends State<HomePageState> {
	
	@override
	Widget build(BuildContext context){
		return Scaffold(
			//appbar
			appbar: AppBar(
				leading: Icon(Icons.menu),
				actions: [
					Padding(
						padding: EdgeInsets.only(right:20),
						child:Icon(Icons.person),
					),
				 ],
			),
			//bottomNavigationBar minimum 2 
			bottomNavigationBar: BottomNavigationBar(
			items:[
				BottomNavigationBarItem(
					icon: Icon(Icons.home),
					label:'',
				 ),

				 BottomNavigationBarItem(
					icon: Icon(Icons.favourites),
					label:'',
				 ),

				 BottomNavigationBarItem(
					icon: Icon(Icons.notifications),
					label:'',
				 ),
			 ],
			),
			//the best coffee there is (headline)
			//get google_font pkg 
			Text('Find the best coffee there is', style: GoogleFonts.bebasNeue(
				fontSize:56,
			 	),),
			//sizedBox
			SizedBox(height:25),

			//searchBar
			Padding(
					padding: EdgeInsets.symmetric(horizontal:20),
						child:TextField(
							decoration: InputDecoration(
								prefixIcon: Icon(Icons.search),
								hintText: Text('Search for coffee..'),
								focusedBorder: OutlineInputBorder(
									borderSide: borderSide(color: Colors.grey.shade600,),
								 ),
								 enableBorder: OutlineInputBorder(
								 	borderSide: BorderSide(color: Colors.grey.shade600),
								  ),

							 ),
						),
			 ),

			//sizedBox
			SizedBox(height:25),


			// horizontal list view of coffee tiles
			Container(
				child:ListView(
				scrollDirection: Axis.horizontal,
				childrens: [
				 	CoffeePill(coffee_name:'latte'),
				 	CoffeePill(coffee_name:'capputino'),	
				],
			 ),
			),

			//horizontal list Tiles of coffee
			Expanded(
				child:ListView(
				scrollDirection: Axis.horizontal,
				childrens: [
				 	CoffeeCard(),	
				],
			 ),
			),

		 );
	}
}


