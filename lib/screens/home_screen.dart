import 'package:flutter/material.dart';
import 'package:flutter_temp/blocs/provider.dart';
import 'package:flutter_temp/responsive_screens/home/desktop_home_body.dart';
import 'package:flutter_temp/responsive_screens/home/mobile_home_body.dart';
import 'package:flutter_temp/responsive_screens/home/tablet_home_body.dart';
import 'package:flutter_temp/responsive_screens/responsive_layout.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      child: const ResponsiveLayout(
        mobileScaffold: MobileHomeBody(),
        tabletScaffold: TabletHomeBody(),
        desktopScaffold: DesktopHomeBody(),
      ),
    );
  }
}
