// import 'package:flutter/material.dart';
// import 'package:like_button/like_button.dart';

// void main() {
//   runApp(MaterialApp(
//     title: "Test",
//     home: CardHor1(),
//   ));
// }

// class CardHor1 extends StatelessWidget {
//   const CardHor1({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(8),
//       width: 320,
//       height: 120,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             offset: const Offset(0, 4),
//             blurRadius: 15,
//             color: Colors.black.withOpacity(0.15),
//           )
//         ],
//         color: Colors.white,
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(12),
//             child: Image.network(
//               'https://assets.pikiran-rakyat.com/crop/40x22:1057x775/x/photo/2022/07/06/1812828818.jpg',
//               height: 100,
//               width: 120,
//               fit: BoxFit.cover,
//             ),
//           ),
//           const SizedBox(width: 16),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'The Phoenix Hotel',
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 Row(
//                   children: [
//                     const Icon(
//                       Icons.location_on,
//                       color: Color.fromARGB(255, 252, 181, 0),
//                       size: 14,
//                     ),
//                     const Text('Sleman'),
//                     const Spacer(),
//                     const Icon(
//                       Icons.star,
//                       color: Color.fromARGB(255, 252, 181, 0),
//                       size: 14,
//                     ),
//                     const Text('9/10'),
//                     const Spacer(),
//                   ],
//                 ),
//                 const Spacer(),
//                 Text('Short From'),
//                 Row(
//                   children: [
//                     Text(
//                       'Rp25',
//                       style: TextStyle(
//                         fontSize: 12,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const Text('/Night'),
//                     const Spacer(),
//                     LikeButton(
//                       size: 30,
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
