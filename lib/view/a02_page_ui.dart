import 'package:flutter/material.dart';

class A02 extends StatefulWidget {
  const A02({super.key});

  @override
  State<A02> createState() => _A02State();
}

class _A02State extends State<A02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Header
            Text(
              "Welcome Back",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
              "Diam maecenas mi non sed ut odio. Non, justo, sed facilisi et.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                hintText: "Username , Email & Phone Number",
                filled: true,
                fillColor: Colors.grey.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                filled: true,
                fillColor: Colors.grey.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password ?",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15),
                ),
                child: Text(
                  "Sign in",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Or Sign up With
            Row(
              children: [
                Expanded(
                  child: Divider(thickness: 1, color: Colors.grey[300]),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text("Or Sign up With"),
                ),
                Expanded(
                  child: Divider(thickness: 1, color: Colors.grey[300]),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon("assets/images/imga2.png"),
                SizedBox(width: 15),
                SocialIcon("assets/images/imga3.png"),
                SizedBox(width: 15),
                SocialIcon("assets/images/imga4.png"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  final String imagePath;
  SocialIcon(this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Image.asset(imagePath, width: 30),
    );
  }
}
