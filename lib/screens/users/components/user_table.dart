import 'package:flutter/material.dart';

class UserTable extends StatelessWidget {
  const UserTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
