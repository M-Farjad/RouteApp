import 'package:flutter/material.dart';

import '../../configs/themes/ui_parameters.dart';
import '../dashboard/components/header.dart';
import './components/body.dart';

class TrackingScreen extends StatelessWidget {
  const TrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: defaultTopPadding,
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Header(title: 'Tracking'),
            ),
            defaultHeightSpace,
            Body(),
          ],
        ),
      ),
    );
  }
}
