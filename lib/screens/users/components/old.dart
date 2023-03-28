// import 'package:flutter/material.dart';

// Column(
//                   children: [
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           UsersData.usersType[0],
//                           style: const TextStyle(
//                               fontSize: 24, fontWeight: FontWeight.bold),
//                         ),
//                         SizedBox(
//                           height: 50,
//                           child: DefaultTabController(
//                             length: 3,
//                             child: Column(
//                               children: [
//                                 //middle Row
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     const OperationsTabBar(selectedIndex: 2),
//                                     // Filter Button
//                                     const TableFilterButton(),
//                                   ],
//                                 ),
//                                 //operation Tabs
//                                 Expanded(
//                                   child: TabBarView(
//                                     children: <Widget>[
//                                       Container(),
//                                       Container(),
//                                       Container(),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                     //Table
//                     Container(
//                       padding: EdgeInsets.symmetric(
//                           horizontal: MediaQuery.of(context).size.width * 0.01),
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(5),
//                       ),
//                       child: const Text(
//                         "Hello",
//                         style: TextStyle(color: Colors.black),
//                       ),
//                     )
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),