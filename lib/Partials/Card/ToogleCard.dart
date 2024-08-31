import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget ToggleCard(BuildContext context,
    {required IconData icon,
    required String title,
    required Color color,
    required bool isTap}) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.2,
    width: MediaQuery.of(context).size.height * 0.2,
    decoration: BoxDecoration(
      color: (isTap == false) ? Colors.grey : Colors.white,
      boxShadow: (isTap == false)
          ? null
          : [
              BoxShadow(
                  color: Colors.blue, blurRadius: 5.dm, spreadRadius: 1.dm),
            ],
      border: (isTap == false)
          ? null
          : Border.all(color: const Color.fromRGBO(2, 138, 234, 1)),
      borderRadius: BorderRadius.circular(10.dm),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: (isTap == false)
              ? const Color.fromARGB(255, 101, 101, 101)
              : color,
          size: 50.dm,
        ),
        Text(
          title,
          style: TextStyle(
              color: (isTap == false)
                  ? const Color.fromARGB(255, 39, 38, 38)
                  : const Color.fromRGBO(0, 73, 124, 1),
              fontFamily: "Lato",
              fontSize: 22.sp,
              fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
