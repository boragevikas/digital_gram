import 'package:digital_gram/Drawer/drawerPage.dart';
import 'package:digital_gram/Responsive.dart/Responsive.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutPage extends StatelessWidget {
  const LayoutPage({Key? key, this.child, this.isLogin}) : super(key: key);
  final Widget? child;
  final bool? isLogin;

  @override
  Widget build(BuildContext context) {
    print(" Hii");
    return ResponsiveBuilder(
      // ignore: avoid_types_as_parameter_names
      builder: (Context, SizingInformation) => Material(
        child: Scaffold(
          drawer: const drawerPage(),
          backgroundColor: Colors.white,
          body: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // We want this side menu only for large screen
              if (Responsive.isDesktop(context) && !isLogin!)
                const Expanded(
                    // default flex = 1
                    // and it takes 1/6 part of the screen
                    child: drawerPage()),
              Expanded(
                // It takes 5/6 part of the screen
                flex: 5,
                child: child!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
