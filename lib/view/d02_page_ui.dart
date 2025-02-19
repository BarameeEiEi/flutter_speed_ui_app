import 'package:flutter/material.dart';
import 'package:iot_thai_moneyshare_project/view/d01_page_ui.dart';
import 'package:iot_thai_moneyshare_project/view/d03_page_ui.dart';
import 'package:iot_thai_moneyshare_project/view/d04_page_ui.dart';

class D02 extends StatefulWidget {
  const D02({super.key});

  @override
  State<D02> createState() => _D02State();
}

class _D02State extends State<D02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
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
                    MaterialPageRoute(builder: (context) => D01()),
                  );
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: MediaQuery.of(context).size.height * 0.04,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Welcome back! \n Glad to see you, Again!',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your email',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: '  Enter your password',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                isCollapsed: true,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 20.0,
                ),
                suffixIcon: Icon(Icons.visibility_off),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => D04()),
                  );
                },
                child: Text('Forgot Password?'),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Divider(thickness: 1, color: Colors.grey[300]),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text("Or Login with"),
                ),
                Expanded(
                  child: Divider(thickness: 1, color: Colors.grey[300]),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset('assets/images/imgc3.png'),
                  onPressed: () {
                    // Google sign in
                  },
                ),
                SizedBox(width: 16),
                IconButton(
                  icon: Image.asset('assets/images/imgc4.png'),
                  onPressed: () {
                    // Facebook sign in
                  },
                ),
                SizedBox(width: 16),
                IconButton(
                  icon: Image.asset('assets/images/imgc5.png'),
                  onPressed: () {
                    // Twitter sign in
                  },
                ),
              ],
            ),
            SizedBox(height: 90),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? "),
                GestureDetector(
                  onTap: () {},
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => D03()),
                      );
                    },
                    child: Text(
                      'Register now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.035,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
