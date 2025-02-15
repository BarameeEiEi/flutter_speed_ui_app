import 'package:flutter/material.dart';

class C01 extends StatefulWidget {
  const C01({super.key});

  @override
  State<C01> createState() => _C01State();
}

class _C01State extends State<C01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
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
