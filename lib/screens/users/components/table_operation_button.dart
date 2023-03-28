import 'package:dashboard_route_app/configs/themes/app_color.dart';
import 'package:dashboard_route_app/configs/themes/ui_parameters.dart';
import 'package:flutter/material.dart';

class TableOperationButton extends StatelessWidget {
  const TableOperationButton({
    super.key,
    required this.press,
    required this.buttonText,
    required this.icon,
  });
  final VoidCallback press;
  final String buttonText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: defaultEdgePadding,
      child: MaterialButton(
        color: primaryColorLight,
        elevation: 5,
        onPressed: press,
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 16,
            ),
            Text(
              buttonText,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
