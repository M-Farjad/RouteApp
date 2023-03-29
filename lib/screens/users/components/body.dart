import 'dart:math';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:dashboard_route_app/dbHelper/db_constants.dart';
import 'package:flutter/material.dart';
import '../../../configs/themes/ui_parameters.dart';
import './users_data.dart';
import 'table_operation_button.dart';
import 'user_table_view.dart';
import 'user_type_row.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: UsersData.usersType.length,
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
                // List.generate(
                //   3,
                //   (index) => UserTableView(
                //     selectedIndex: index,
                //     callOnAdd: () {},
                //     callOnImport: () {},
                //     callOnExport: () {},
                //   ),
                // ) as Widget
                //?Members
                UserTableView(
                  selectedIndex: 0,
                  callOnAdd: () {},
                  callOnImport: () {},
                  callOnExport: () {},
                  userData: UsersData.members,
                ),
                //!Drivers
                UserTableView(
                  selectedIndex: 1,
                  callOnAdd: () {},
                  callOnImport: () {},
                  callOnExport: () {},
                  userData: UsersData.drivers,
                ),
                //Admins
                UserTableView(
                  selectedIndex: 2,
                  callOnAdd: () {},
                  callOnImport: () {},
                  callOnExport: () {},
                  userData: UsersData.admin,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
