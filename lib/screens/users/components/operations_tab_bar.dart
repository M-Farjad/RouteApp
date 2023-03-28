import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

import 'users_data.dart';

class OperationsTabBar extends StatelessWidget {
  const OperationsTabBar({
    super.key,
    required this.selectedIndex,
  });

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
      TabBarView(
        children: <Widget>[
          Container(),
          Container(),
          Container(),
        ],
      ),
    ]);
    // );
  }
}

// Filter Button
