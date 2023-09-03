// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

// TODO: ใส่รหัสนักศึกษาที่ค่าสตริงนี้
const studentId = '630710125';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme
        .of(context)
        .textTheme;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_colorful.jpg"),
              opacity: 0.6,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Good Morning',
                  textAlign: TextAlign.center, style: textTheme.headlineMedium),
              Text(studentId,
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black87)),
              Spacer(),
              _buildQuizView(),
              Spacer(),
              _buildButtonPanel(),
              //SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }

  _buildQuizView() {
    // TODO: build UI
    var textTheme = Theme
        .of(context)
        .textTheme;
    return Container(
      padding: EdgeInsets.all(100.0), // ปรับขนาดขอบของกรอบข้อความ
      decoration: BoxDecoration(
        color: Colors.white, // สีพื้นหลังของกรอบ
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(20.0), // มุมขอบของกรอบ
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // เฉดสีของเงา
            spreadRadius: 5, // รัศมีการกระจายของเงา
            blurRadius: 7, // รัศมีของเงาที่เบลอ
            offset: Offset(0, 3), // ตำแหน่งของเงา
          ),
        ],
      ),
      child: Column(
        children: [
          Text('Question 1 of 30',
              textAlign: TextAlign.center, style: textTheme.headlineSmall),
          SizedBox(height: 16.0), // ระยะห่างระหว่างกล่องข้อความและกล่องเพิ่มเติม
          Container(
            padding: EdgeInsets.all(16.0), // ปรับขนาดขอบของกล่องเพิ่มเติม
            decoration: BoxDecoration(
              color: Colors.teal[600], // สีพื้นหลังของกล่องเพิ่มเติม
              borderRadius: BorderRadius.circular(11.0), // มุมขอบของกล่องเพิ่มเติม
              border: Border.all(color: Colors.black),
            ),
            child: Text(
              'What is the capital of France?',
              style: TextStyle(
                color: Colors.white, // สีของข้อความ
                fontSize: 18.0, // ขนาดของข้อความ
                fontWeight: FontWeight.bold, // ตัวหนา
              ),
              textAlign: TextAlign.center,
              // การจัดวางข้อความ
            ),
          ),
          SizedBox(height: 16.0),
          Container(
            //padding: EdgeInsets.all(16.0), // ปรับขนาดขอบของกล่องเพิ่มเติม
            decoration: BoxDecoration(
              color: Colors.white, // สีพื้นหลังของกล่องเพิ่มเติม
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black),
            ),

            child: Text(
              'Berlin',
              style: TextStyle(
                color: Colors.black, // สีของข้อความ
                fontSize: 15.0, // ขนาดของข้อความ
                fontWeight: FontWeight.bold,

              ),
              textAlign: TextAlign.left,
              // การจัดวางข้อความ
            ),
            width : 300.0,
            height: 40.0,
          ),
          SizedBox(height: 16.0),
          Container(
            //padding: EdgeInsets.all(16.0), // ปรับขนาดขอบของกล่องเพิ่มเติม
            decoration: BoxDecoration(
              color: Colors.white, // สีพื้นหลังของกล่องเพิ่มเติม
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black),
              // มุมขอบของกล่องเพิ่มเติม
            ),

            child: Text(
              'London',
              style: TextStyle(
                color: Colors.black, // สีของข้อความ
                fontSize: 15.0, // ขนาดของข้อความ
              ),
              textAlign: TextAlign.left,
              // การจัดวางข้อความ
            ),
            width : 300.0,
            height: 40.0,
          ),
          SizedBox(height: 20.0),
          Container(
            //padding: EdgeInsets.all(16.0), // ปรับขนาดขอบของกล่องเพิ่มเติม
            decoration: BoxDecoration(
              color: Colors.white, // สีพื้นหลังของกล่องเพิ่มเติม
              borderRadius: BorderRadius.circular(10.0),
              // มุมขอบของกล่องเพิ่มเติม
              border: Border.all(color: Colors.black),
            ),

            child: Text(
              'Madrid',
              style: TextStyle(
                color: Colors.black, // สีของข้อความ
                fontSize: 15.0, // ขนาดของข้อความ
              ),
              textAlign: TextAlign.left,
              // การจัดวางข้อความ
            ),
            width : 300.0,
            height: 40.0,
          ),
          SizedBox(height: 20.0),
          Container(
            //padding: EdgeInsets.all(16.0), // ปรับขนาดขอบของกล่องเพิ่มเติม
            decoration: BoxDecoration(
              color: Colors.red, // สีพื้นหลังของกล่องเพิ่มเติม
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black),
              // มุมขอบของกล่องเพิ่มเติม
            ),

            child: Text(
              'Paris',
              style: TextStyle(
                color: Colors.black, // สีของข้อความ
                fontSize: 15.0, // ขนาดของข้อความ
              ),
              textAlign: TextAlign.left,
              // การจัดวางข้อความ
            ),
            width : 300.0,
            height: 40.0,
          ),
        ],
      ),
    );

  }
  _buildButtonPanel() {
    // TODO: build UI
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              side: BorderSide(color: Colors.black),
              backgroundColor: Colors.redAccent,
            ),
            child: Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 9.0, horizontal: 50.0),
              child: Text(
                '<',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              side: BorderSide(color: Colors.black),
              backgroundColor: Colors.greenAccent,
            ),
            child: Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 9.0, horizontal: 50.0),
              child: Text(
                '>',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}