import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../../../configs/themes/ui_parameters.dart';
import '../../../configs/themes/app_color.dart';
import '../../../models/recent_file.dart';
import 'users_data.dart';

class UserTable extends StatelessWidget {
  const UserTable({
    super.key,
    required this.userData,
  });
  final List<Map<String, dynamic>> userData;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: defaultPadding),
      width: double.infinity,
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColorLight,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Files',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: defaultPadding,
              columns: userDataColumn(context),
              rows: List.generate(
                  userData.length, (index) => userDataRow(userData[index])),
            ),
          )
        ],
      ),
    );
  }

  List<DataColumn> userDataColumn(BuildContext context) {
    return [
      DataColumn(
        label: Text(
          'id',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontStyle: FontStyle.italic),
        ),
      ),
      DataColumn(
        label: Text(
          'name',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontStyle: FontStyle.italic),
        ),
      ),
      DataColumn(
        label: Text(
          'username',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontStyle: FontStyle.italic),
        ),
      ),
      DataColumn(
        label: Text(
          'mobile',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontStyle: FontStyle.italic),
        ),
      ),
      DataColumn(
        label: Text(
          'email',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontStyle: FontStyle.italic),
        ),
      ),
      DataColumn(
        label: Text(
          'isBlocked',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontStyle: FontStyle.italic),
        ),
      ),
    ];
  }

  DataRow userDataRow(Map<String, dynamic> members) {
    return DataRow(
      onLongPress: () {},
      cells: [
        DataCell(Text(members["id"])),
        DataCell(Text(members["name"])),
        DataCell(Text(members["username"])),
        DataCell(Text(members["mobile"])),
        DataCell(Text(members["email"])),
        DataCell(Text(members["isBlocked"].toString())),
      ],
    );
  }
}
