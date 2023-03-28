import 'dart:math';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:dashboard_route_app/dbHelper/db_constants.dart';
import 'package:flutter/material.dart';
import '../../../configs/themes/ui_parameters.dart';
import './users_data.dart';
import 'table_filter_button.dart';
import 'user_type_row.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //  Upper Row
          const UsersType(),
          defaultHeightSpace, // 16 pixel sizebox height
          // Middle row and table
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.width * 0.8,
            child: TabBarView(
              children: [
                //?Members
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            //display user type
                            Text(
                              UsersData.usersType[0],
                              style: const TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            //Three BUttons
                            defaultWidthSpace, // 16 pixel sizebox width
                            const TableFilterButton(),
                            defaultWidthSpace, // 16 pixel sizebox width
                            const TableFilterButton(),
                            defaultWidthSpace, // 16 pixel sizebox width
                            const TableFilterButton(),
                          ],
                        ),
                        const TableFilterButton(),
                      ],
                    ),
                    // Table
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.01),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        "Hello",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
                // //!Drivers
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //display user type
                            Text(
                              UsersData.usersType[0],
                              style: const TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            //Three BUttons
                            const TableFilterButton(),
                            const TableFilterButton(),
                            const TableFilterButton(),
                          ],
                        ),
                        const TableFilterButton(),
                      ],
                    ),
                    // Table
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.01),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        "Hello",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
                // //?Admins
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //display user type
                            Text(
                              UsersData.usersType[0],
                              style: const TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            //Three BUttons
                            const TableFilterButton(),
                            const TableFilterButton(),
                            const TableFilterButton(),
                          ],
                        ),
                        const TableFilterButton(),
                      ],
                    ),
                    // Table
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.01),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        "Hello",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
