import 'package:flutter/material.dart';

import '../../../configs/themes/ui_parameters.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        // Routes Area
        Container(
          width: 300,
          height: size.height,
          padding: defaultVerticalPadding,
          color: const Color.fromARGB(17, 255, 193, 7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text of Drivers(5)
              Padding(
                padding: defaultHorizontalPadding,
                child: Text('Drivers (5)'),
              ),

              //space
              defaultHeightSpace,

              // Seach Box
              Padding(
                padding: defaultHorizontalPadding,
                child: Row(
                  children: [
                    // Text Field for Search
                    Expanded(child: TextField()),

                    // Space
                    defaultWidthSpace,

                    // Filter Button
                    ElevatedButton(onPressed: () {}, child: Container()),
                  ],
                ),
              ),

              //Space
              defaultHeightSpace,

              //Select All
              Padding(
                padding: defaultHorizontalPadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    // select all widget
                    Container(
                      height: 10,
                      width: 10,
                      color: Colors.amber,
                    ),
                    const Text('Select All'),
                  ],
                ),
              ),
              // Space
              defaultHeightSpace,

              // All Routes
              // ListView of all Routes

              // space
              defaultHeightSpace,
            ],
          ),
        ),
        // MapBox + Routes Details Area
        Expanded(
            child: Container(
          height: size.height,
          color: const Color.fromARGB(15, 255, 255, 255),
          child: Stack(
            children: [
              // MapBOx
              Container(
                color: Colors.blueGrey,
                child: Center(child: Text('MapBox')),
              ),

              // Container of Route Details
              Align(
                alignment:
                    const Alignment(0, 1), // to make alignment at center end
                child: Container(
                  height: 200,
                  padding: defaultEdgePadding,
                  margin: defaultEdgePadding,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(defaultPadding),
                  ),
                  child: Center(child: Text('Route Details')),
                ),
              )
            ],
          ),
        )),
      ],
    );
  }
}
