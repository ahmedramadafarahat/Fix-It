// import 'package:fixit/views/home_screen.dart';
// import 'package:fixit/views/order_screen.dart';
// import 'package:fixit/views/services_screen.dart';
// import 'package:fixit/views/setting_screen.dart';
// import 'package:flutter/material.dart';

// class BottomNav extends StatefulWidget {
//   const BottomNav({super.key});

//   @override
//   State<BottomNav> createState() => _ProfileState();
// }

// class _ProfileState extends State<BottomNav> {
//   int currentIndex = 0;
//   final screens = [
//     const HomeScreen(),
//     const ServicesScreen(),
//     const OrderScreen(),
//     const SettingScreen(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//           backgroundColor: const Color(0xff1B3A56),
//           child: const Image(
//             height: 40,
//             image: AssetImage('assets/icons/call_center.png'),
//           ),
//           onPressed: () {}),
//       body: screens[currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         fixedColor: Colors.white,
//         unselectedItemColor: Colors.white,
//         selectedLabelStyle: const TextStyle(
//           color: Colors.white,
//         ),
//         unselectedLabelStyle: const TextStyle(color: Colors.white),
//         backgroundColor: const Color(0xff1b3a56),
//         showUnselectedLabels: false,
//         iconSize: 30,
//         type: BottomNavigationBarType.fixed,
//         currentIndex: currentIndex,
//         onTap: (index) => setState(() => currentIndex = index),
//         items: const [
//           BottomNavigationBarItem(
//             label: 'Home',
//             icon: Icon(
//               Icons.home,
//               color: Colors.white,
//             ),
//           ),
//           BottomNavigationBarItem(
//             label: 'Services',
//             icon: Image(
//               height: 30,
//               image: AssetImage(
//                 'assets/icons/services.png',
//               ),
//             ),
//           ),
//           BottomNavigationBarItem(
//             label: 'Order',
//             icon: Image(
//               height: 30,
//               image: AssetImage(
//                 'assets/icons/order.png',
//               ),
//             ),
//           ),
//           BottomNavigationBarItem(
//             label: 'Setting',
//             icon: Icon(
//               Icons.settings,
//               color: Colors.white,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
