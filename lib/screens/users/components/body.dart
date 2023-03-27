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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //display user type
                            Text(
                              UsersData.usersType[0],
                              style: const TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 50,
                              child: DefaultTabController(
                                length: 3,
                                child: OperationsTabBar(selectedIndex: 0),
                              ),
                            ),
                          ],
                        ),
                        const TableFilterButton(),
                      ],
                    ),
                    //Table
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
                //!Drivers
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //display user type
                            Text(
                              UsersData.usersType[0],
                              style: const TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 50,
                              child: DefaultTabController(
                                length: 3,
                                child: OperationsTabBar(selectedIndex: 0),
                              ),
                            ),
                          ],
                        ),
                        const TableFilterButton(),
                      ],
                    ),
                    //Table
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
                //?Admins
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          UsersData.usersType[0],
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: 50,
                          child: DefaultTabController(
                            length: 3,
                            child: Column(
                              children: [
                                //middle Row
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const OperationsTabBar(selectedIndex: 2),
                                    // Filter Button
                                    MaterialButton(
                                      color: Colors.white,
                                      onPressed: () {},
                                      child: const Text(
                                        "< Filter",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                //operation Tabs
                                Expanded(
                                  child: TabBarView(
                                    children: <Widget>[
                                      Container(),
                                      Container(),
                                      Container(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    //Table
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

class OperationsTabBar extends StatelessWidget {
  const OperationsTabBar({
    super.key,
    required this.selectedIndex,
  });

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonsTabBar(
          backgroundColor: Colors.red,
          unselectedBackgroundColor: Colors.grey[300],
          unselectedLabelStyle: const TextStyle(color: Colors.black),
          labelStyle:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          tabs: [
            const Tab(
              icon: Icon(Icons.add),
              text: "Add New",
            ),
            Tab(
              icon: const Icon(Icons.file_download),
              text: "Import ${UsersData.usersType[selectedIndex]}",
            ),
            Tab(
              icon: const Icon(Icons.file_upload),
              text: "Export ${UsersData.usersType[selectedIndex]}(Excel)",
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            children: <Widget>[
              Container(),
              Container(),
              Container(),
            ],
          ),
        ),
      ],
    );
  }
}





 // Filter Button
                                    