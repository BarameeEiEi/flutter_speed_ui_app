import 'package:flutter/material.dart';
import 'package:iot_thai_moneyshare_project/view/c02_page_ui.dart';
import 'package:iot_thai_moneyshare_project/view/home_ui.dart';

class C01 extends StatefulWidget {
  const C01({super.key});

  @override
  State<C01> createState() => _C01State();
}

class _C01State extends State<C01> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => C02(),
        ),
      ),
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeUI()),
                );
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: MediaQuery.of(context).size.height * 0.04,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          Image.asset(
            'assets/images/imgc1.png',
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    'assets/images/imgc2.png',
                    fit: BoxFit.cover,
                    width: 65,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "HOPE FOR",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "HUMANITY",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 200),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Welcome to",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.green,
                    ),
                  ),
                ),
                Text(
                  "hope for humanity",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
