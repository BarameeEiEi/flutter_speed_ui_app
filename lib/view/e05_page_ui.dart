import 'package:flutter/material.dart';

class E05 extends StatefulWidget {
  const E05({super.key});

  @override
  State<E05> createState() => _E05State();
}

class _E05State extends State<E05> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: MediaQuery.of(context).size.height * 0.04,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              Center(
                child: Text(
                  "OTP Verification",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Image.asset(
                  "assets/images/imge6.png",
                  height: 200,
                ),
              ),

              SizedBox(height: 30),

              // หัวข้อ "Enter OTP"
              Text(
                "Enter OTP",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 5),

              // คำอธิบาย OTP
              Text(
                "An 4 digit code has been sent to your email",
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),

              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(4, (index) {
                  return SizedBox(
                    width: 65,
                    height: 70,
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      decoration: InputDecoration(
                        counterText: '',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  );
                }),
              ),
              SizedBox(height: 20),
              Center(
                child: Text.rich(
                  TextSpan(
                    text: "You should receive the OTP in ",
                    style: TextStyle(fontSize: 14),
                    children: [
                      TextSpan(
                        text: "30 Seconds",
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Colors.orange,
                  ),
                  child: Text(
                    "Verify",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
