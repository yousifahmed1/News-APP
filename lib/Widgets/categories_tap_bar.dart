// import 'package:flutter/material.dart';
//
// class CategoriesTabBar extends StatelessWidget {
//   final Function(int) onTabSelected; // Callback for tab selection
//
//
//   CategoriesTabBar({super.key, required this.onTabSelected});
//
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: categories.length,
//       child: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10),
//             child: TabBar(
//               isScrollable: true,
//               indicatorColor: Colors.black,
//               labelColor: Colors.black,
//               unselectedLabelColor: Colors.grey,
//               labelStyle: const TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//               ),
//               unselectedLabelStyle: const TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//               ),
//               tabs: categories.map((category) => Tab(text: category)).toList(),
//               onTap: onTabSelected, // This calls the callback when a tab is tapped
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }