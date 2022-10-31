import 'package:flutter/material.dart';


Class Coffee extends StatelessWidget {
	const Coffee ({Key? key}): super(Key:key);

	@override
	Widget build(BuildContext context){
		return MaterialApp(
			debugShowCheckedModeBanner: false,
			home: HomePage(),
			theme: ThemeData(
			       brightness: Brightness.dark,
			       primarySwatch: Colors.orange
			    ),
		 );		
	}
}