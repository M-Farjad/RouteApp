import 'package:dashboard_route_app/configs/themes/app_color.dart';
import 'package:dashboard_route_app/configs/themes/ui_parameters.dart';
import 'package:flutter/material.dart';

class TableFilterButton extends StatelessWidget {
  const TableFilterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: defaultHorizontalPadding,
      child: MaterialButton(
        color: primaryColorLight,
        onPressed: () {},
        child: const Text(
          "< Filter",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
