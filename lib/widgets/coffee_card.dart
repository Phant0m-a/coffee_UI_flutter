import 'package:flutter/material.dart';


Class CoffeeCard extends StatelessWidget {
	const CoffeeCard ({Key? key}): super(Key:key);

	@override
	Widget build(BuildContext context){
		return Padding(
				padding: EdgeInsets.only(left:25, bottom:25),
				child: Container(
					padding: EdgeInsets.all(12),
					width:200,
					decoration: BoxDecoration( 
						borderRadius: BorderRadius.circular(12),
						color: Colors.black54,
					 ),
					 child: Column(
					 	crossAxisAlignment: CrossAxisAlignment.start,
					 	children: [

					 	 Padding(
						 padding: EdgeInsets.symmetric(vertical:12.0, horizontal:8),
					 	 child: Column(
					 	 crossAxisAlignment: CrossAxisAlignment.start,
					 	 children: [

					 	 // coffee image
    					 ClipRRect(
 							borderRadius: BorderRadius.circular(12),
 							// add image here
 							child: Image.asset(' No_Image_added ') ,
    					  ),

    					  // name Text
    					  Text('Latte', style: TextStyle( fontSize: 20)),

    					  SizedBox(height:4),

    					  // 
    					  Text('Latte', style: TextStyle( color: Colors.grey[700])),
    					]),
    				),


    				// THE PRICING
    				Padding(
    				padding:EdgeInsets.symmetric(horizontal:10),
    				child:Row( 
    					mainAxisAlignment: MainAxisAlignment.spaceBetween,
    					children:[

    					Text('\$ 4.00 '),
    					Container(
    						padding: EdgeInsets.all(4),
    						decoration: BoxDecoration(
    							borderRadius: BorderRadius.circular(6),
    						 ),
    						child:Icon(Icons.add),
    					 ),
    				
    					 ],
    				 ),),

					]),
				),
			);		
	}
}