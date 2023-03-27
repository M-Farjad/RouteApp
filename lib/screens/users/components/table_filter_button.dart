import 'package:flutter/material.dart';

class TableFilterButton extends StatelessWidget {
  const TableFilterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.white,
      onPressed: () {},
      child: const Text(
        "< Filter",
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    );
  }
}
