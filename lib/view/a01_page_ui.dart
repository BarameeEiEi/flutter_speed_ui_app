import 'package:flutter/material.dart';

class A01 extends StatefulWidget {
  const A01({super.key});

  @override
  State<A01> createState() => _A01State();
}

class _A01State extends State<A01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.pink.shade100,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(40)),
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/imga1.png', // เปลี่ยนเป็นชื่อไฟล์ของคุณ
                  width: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              children: [
                Text(
                  "Discover Your\nOwn Dream House",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                  "Diam maecenas mi non sed ut odio. Non, justo, sed facilisi "
                  "et. Eget viverra urna, vestibulum egestas faucibus egestas.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),

          // ปุ่มด้านล่าง
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink.shade100,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15),
                    ),
                    child: Text(
                      "Sign in",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15),
                    ),
                    child: Text("Register"),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 30), // ระยะห่างจากขอบล่าง
        ],
      ),
    );
  }
}
