// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// class Coffee_card extends StatelessWidget {
//   const Coffee_card({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(left: 25, bottom: 25),
//       child: Container(
//         padding: EdgeInsets.all(12),
//         width: 200,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(12),
//           color: Colors.black54,
//         ),
//         child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//           Padding(
//             padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
//             child:
//                 Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//               // coffee image
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(12),
//                 // add image here
//                 child: Image.asset('lib/assets/coffee_latte.PNG',width: double.infinity,height: 170,),
//               ),

//                 SizedBox(height: 4),
//               // name Text
//               Text('Latte', style: TextStyle(fontSize: 20)),

//               SizedBox(height: 4),

//               //
//               Text('Latte', style: TextStyle(color: Colors.grey[700])),
//             ]),
//           ),

//           // THE PRICING
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 10),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text('\$ 4.00 '),
//                 Container(
//                   padding: EdgeInsets.all(4),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(6),
//                   ),
//                   child: Icon(Icons.add),
//                 ),
//               ],
//             ),
//           ),
//         ]),
//       ),
//     );
//   }
// }

class CoffeeCard extends StatelessWidget {
  const CoffeeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, bottom: 10),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // image of coffee
                  Container(
                    height: 200,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image(
                        image: AssetImage(
                          'lib/assets/coffee_black.PNG',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Latte',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'With Almond Milk',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ),

                  //price
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('\$ 4,00'),
                        Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(6)),
                            child: Icon(Icons.add))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
