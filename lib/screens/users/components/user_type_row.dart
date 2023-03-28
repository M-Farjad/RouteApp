import 'package:flutter/material.dart';

import 'users_data.dart';

class UsersType extends StatelessWidget {
  const UsersType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // 16 pixel sizebox width
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.5,
          padding: MediaQuery.of(context).padding * 0.1,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: TabBar(
            unselectedLabelColor: Color(0xff8a9299),
            labelColor: Colors.black,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            tabs: [
              Tab(
                text: UsersData.usersType[0],
              ),
              Tab(
                text: UsersData.usersType[1],
              ),
              Tab(
                text: UsersData.usersType[2],
              ),
            ],
          ),
        ),
        // TOtal Memebers + Blocked Users
        Column(
          children: [
            Text('Total Users: ${UsersData.totalUsers[0].toString()}'),
            Text('BLocked: ${UsersData.blockUsers[0].toString()}')
          ],
        ),
      ],
    );
  }
}
