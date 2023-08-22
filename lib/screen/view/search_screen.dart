import 'package:exam_instagram/screen/api_model/api_model.dart';
import 'package:exam_instagram/utills/api_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder(
          future: apiHelper.api_Helper.getDataFromSearch(),
            builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Text("error");
          } else if (snapshot.hasData) {
            ApiModel? w = snapshot.data as ApiModel?;
            return Container(
              child: Text("${w!.result}"),
            );
          }
          return Center(
            child: CircularProgressIndicator(color: Color(0xff6151C3)),
          );
        },
        ),
      ),
    );
  }
}
