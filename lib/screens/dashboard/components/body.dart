import 'package:flutter/material.dart';

import '../../../configs/themes/ui_parameters.dart';
import '../../../responsive.dart';
import './my_files.dart';
import './recent_files.dart';
import './storage_details.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: Responsive.isDesktop(context) ? 5 : 6,
              child: Column(
                children: [
                  const MyFiles(),
                  const RecentFiles(),
                  if (Responsive.isMobile(context))
                    const Padding(
                      padding: EdgeInsets.only(top: defaultPadding),
                      child: StorageDetails(),
                    ),
                ],
              ),
            ),
            if (!Responsive.isMobile(context))
              Expanded(
                flex: Responsive.isDesktop(context) ? 2 : 3,
                child: const Padding(
                  padding: EdgeInsets.only(left: defaultPadding),
                  child: StorageDetails(),
                ),
              )
          ],
        ),
      ],
    );
  }
}
