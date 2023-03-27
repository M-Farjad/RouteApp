import 'package:dashboard_route_app/dbHelper/mongoDb.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(onPressed: () => mongoDbFunction(), child: Text('hi')),
        Image.asset(
          'assets/icons/message.png',
          color: Colors.white38,
        )
      ],
    );
  }

  void mongoDbFunction() {
    print(MongoDatabase.tracksCollection.find('{"name":"route 1"}'));
  }
}
