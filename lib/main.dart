import 'package:flutter/material.dart';
import 'package:iot_thai_moneyshare_project/view/a01_page_ui.dart';
import 'package:iot_thai_moneyshare_project/view/a02_page_ui.dart';
import 'package:iot_thai_moneyshare_project/view/b01_page_ui.dart';
import 'package:iot_thai_moneyshare_project/view/b02_page_ui.dart';
import 'package:iot_thai_moneyshare_project/view/b03_page_ui.dart';
import 'package:iot_thai_moneyshare_project/view/c01_page_ui.dart';
import 'package:iot_thai_moneyshare_project/view/c02_page_ui.dart';
import 'package:iot_thai_moneyshare_project/view/c03_page_ui.dart';
import 'package:iot_thai_moneyshare_project/view/d01_page_ui.dart';
import 'package:iot_thai_moneyshare_project/view/d02_page_ui.dart';
import 'view/home_ui.dart';

void main() {
  runApp(
    flutter_speed_ui_app(),
  );
}

class flutter_speed_ui_app extends StatefulWidget {
  const flutter_speed_ui_app({super.key});

  @override
  State<flutter_speed_ui_app> createState() => _flutter_speed_ui_appState();
}

class _flutter_speed_ui_appState extends State<flutter_speed_ui_app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: D02(),
    );
  }
}
