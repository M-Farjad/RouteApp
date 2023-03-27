import 'package:get/get.dart';

import '../../../controllers/custom_menu_controller.dart';
import 'package:flutter/material.dart';

import '../../../responsive.dart';
import './search_field.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    final menuController = Get.find<CustomMenuController>();
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
              onPressed: menuController.controlMenu,
              icon: const Icon(Icons.menu)),
        if (!Responsive.isMobile(context))
          Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        if (!Responsive.isMobile(context))
          Spacer(
            flex: Responsive.isDesktop(context) ? 2 : 1,
          ),
        const Expanded(child: SearchFeild()),
      ],
    );
  }
}
