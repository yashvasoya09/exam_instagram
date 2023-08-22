import 'package:exam_instagram/screen/view/search_screen.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    routes: {
    '/':(context) => SearchScreen(),
    },
  ),
  );
}