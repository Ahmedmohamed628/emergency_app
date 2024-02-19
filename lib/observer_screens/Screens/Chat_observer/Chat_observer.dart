import 'package:flutter/material.dart';

import '../../../screens_chat/mobile_layout_screen.dart';
import '../../../screens_chat/web_layout_screen.dart';
import '../../../utils/responsive_layout.dart';

class ChatScreenObserver extends StatelessWidget {
  static const String routeName = 'Chat-screen-observer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
          mobileScreenLayout: MobileLayoutScreen(),
          webScreenLayout: WebLayoutScreen()),
    );
  }
}
