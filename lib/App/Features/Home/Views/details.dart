import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsScreen extends StatelessWidget {
  String title;
  String date;
  int id;
  String description;

  DetailsScreen({
    Key? key,
    required this.title,
    required this.date,
    required this.id,
    required this.description
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white70,
        title: const Text(
          'Events',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Container(
        width: 1.sw,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white70,
        ),
        padding: const EdgeInsets.all(30),
        margin: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              id.toString(),
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600 , fontSize: 22.sp),
            ),
            Text(
              title,
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600 , fontSize: 20.sp),
            ),
            Text(
              date,
              style: TextStyle(color: Colors.black, fontSize: 16.sp),
            ),
            Text(
              description,
              style: TextStyle(color: Colors.black , fontSize: 14.sp),
            ),
          ],
        ),
      ),
    );
  }
}
