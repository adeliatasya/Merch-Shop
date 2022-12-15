// import 'dart:html';

// import 'package:flutter/material.dart';
// import 'package:uas_prakmobile/models/Produk.dart';


// class MyWidget extends StatelessWidget {
//   const MyWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Icon(Icons.menu),
//         title: Text('Merch Shop'),
//         actions: [
//           IconButton(onPressed: (){}, icon: Icon(Icons.search)),
//           IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
//         ],
//       ),
//       body: GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//           itemBuilder: (BuildContext context, index) {
//             final Resources Map = dynamic[index];
//             return Card(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(8)),
//               child: Column(
//                 children: [
//                   Container(
//                     height: 140,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                           image: NetworkImage(Map.imageLink),
//                       fit: BoxFit.cover)),
//                   ),
//                   SizedBox(height: 2,),
//                   Text(Map.kind),
//                   Text(Map.id),
//                   Text(Map.brand),
//                   Text(Map.condition),
//                   Text(Map.color),
//                   Text(Map.price),
//                 ],
//               ),
//             );
//           }),
//     );
//   }
// }
