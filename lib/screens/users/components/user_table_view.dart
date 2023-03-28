import 'package:flutter/material.dart';

import 'table_operation_button.dart';
import 'user_table.dart';
import 'users_data.dart';

class UserTableView extends StatelessWidget {
  const UserTableView({
    super.key,
    required this.selectedIndex,
    required this.callOnAdd,
    required this.callOnImport,
    required this.callOnExport,
  });
  final int selectedIndex;
  final VoidCallback? callOnAdd;
  final VoidCallback? callOnImport;
  final VoidCallback? callOnExport;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                //display user type
                Text(
                  UsersData.usersType[selectedIndex],
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                //Three BUttons
                TableOperationButton(
                    press: callOnAdd!, buttonText: ' Add New', icon: Icons.add),
                TableOperationButton(
                    press: callOnImport!,
                    buttonText: ' Import ${UsersData.usersType[selectedIndex]}',
                    icon: Icons.download),
                TableOperationButton(
                    press: callOnExport!,
                    buttonText: ' Export ${UsersData.usersType[selectedIndex]}',
                    icon: Icons.upload),
              ],
            ),
            TableOperationButton(
                press: () {},
                buttonText: ' Filter',
                icon: Icons.arrow_back_ios_new),
          ],
        ),
        // Table
        UserTable(),
      ],
    );
  }
}
