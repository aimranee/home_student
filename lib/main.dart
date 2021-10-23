import 'package:flutter/material.dart';
import 'package:home_student/home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'favorite.dart';
import 'profile.dart';
import 'map.dart';
import 'tabbar_material_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 750),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const MainPage()
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);
  
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
   int index = 0;

  final pages = <Widget>[
    Home(),
    Favorite(),
    Profile(),
    Map(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBody: true,
        body: pages[index],
        bottomNavigationBar: TabBarMaterialWidget(
          index: index,
          onChangedTab: onChangedTab,
        ),
        floatingActionButton: ClipRRect(
          borderRadius: BorderRadius.circular(50.0),
        child: FloatingActionButton(
          backgroundColor: Color(0xfff63e3c),
          shape: RoundedRectangleBorder(),
          onPressed: () {},
          tooltip: 'Add Annonce',
          child: Icon(Icons.add, size: ScreenUtil().setHeight(26.0),),
          elevation: 2.0,
        ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      );

  void onChangedTab(int index) {
    setState(() {
      this.index = index;
    });
  }
}
