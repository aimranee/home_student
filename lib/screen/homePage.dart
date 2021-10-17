import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class homePage extends StatefulWidget {
  const homePage({ Key? key }) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setWidth(30.0),
            vertical: ScreenUtil().setHeight(20.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(Icons.home, color: Color(0xff442243), size: ScreenUtil().setHeight(26.0),),
              Icon(Icons.explore_outlined, color: Colors.grey, size: ScreenUtil().setHeight(26.0),),
              Icon(Icons.bookmark_border, color: Colors.grey, size: ScreenUtil().setHeight(26.0),),
              Icon(Icons.person_outline, color: Colors.grey, size: ScreenUtil().setHeight(26.0),),
            ],
          ),
        ),
        color: Colors.white,
      ),
    );
  }
}