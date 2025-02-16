import 'package:flutter/material.dart';
import 'package:iot_thai_moneyshare_project/view/e02_page_ui.dart';
import 'package:iot_thai_moneyshare_project/view/home_ui.dart';

class E01 extends StatefulWidget {
  const E01({super.key});

  @override
  State<E01> createState() => _E01State();
}

class _E01State extends State<E01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
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
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            Image.asset(
              'assets/images/imge1.png',
              height: 400,
            ),
            SizedBox(height: 20),
            Stack(
              children: [
                Text(
                  'BERRY JUICE',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Serif',
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 4
                      ..color = Colors.orange,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'BERRY JUICE',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Serif',
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'A "Moments of healthy sip"\nThe best vitamin for your health',
              style:
                  TextStyle(fontSize: 14, color: Color.fromARGB(255, 0, 0, 0)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 45),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => E02()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Explore Now',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 16),
                    ),
                    SizedBox(width: 10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Icon(Icons.arrow_forward, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
