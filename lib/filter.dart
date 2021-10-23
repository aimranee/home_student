import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 24, left: 24, top: 32, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [

              Text(
                "Filter",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(
                width: 8,
              ),

              Text(
                "your search",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),

            ],
          ),
          SizedBox(
            height: 16,
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: Color(0xff4d3a58),
                      borderRadius: BorderRadius.circular(30.0)
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(30.0),
                      vertical: ScreenUtil().setHeight(30.0),
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.apartment, color: Colors.white, size: ScreenUtil().setHeight(30.0),),
                        SizedBox(height: ScreenUtil().setHeight(20.0),width: ScreenUtil().setWidth(90.0),),
                        Text("Appartement",
                          style: GoogleFonts.play(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: ScreenUtil().setSp(14.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xff4d3a58).withOpacity(0.05),
                      borderRadius: BorderRadius.circular(30.0)
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(30.0),
                      vertical: ScreenUtil().setHeight(30.0),
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.house, color: Color(0xff4d3a58), size: ScreenUtil().setHeight(30.0),),
                        SizedBox(height: ScreenUtil().setHeight(20.0), width: ScreenUtil().setWidth(90.0),),
                        Text("House",
                          style: GoogleFonts.play(
                            color: Color(0xff4d3a58),
                            fontWeight: FontWeight.w600,
                            fontSize: ScreenUtil().setSp(14.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ]
          ),

          SizedBox(
            height: 32,
          ),

          Row(
            children: [

              Text(
                "Price",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(
                width: 8,
              ),

              Text(
                "range",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),

            ],
          ),

          SizedBox(
            height: 16,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              buildOption("All", false),
              buildOption("<1500DH", false),
              buildOption("1500DH - 2000DH", true),
              buildOption(">2000", false),

            ],
          ),

          SizedBox(
            height: 16,
          ),

          Text(
            "Rooms",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(
            height: 16,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              buildOption("All", false),
              buildOption("1", false),
              buildOption("2", true),
              buildOption("3+", false),

            ],
          ),

          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }

  Widget buildOption(String text, bool selected){
    return Container(
      height: 45,
      width: 65,
      decoration: BoxDecoration(
        color: selected ? Colors.blue : Colors.transparent,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        border: Border.all(
          width: selected ? 0 : 1,
          color: Colors.grey,
        )
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: selected ? Colors.white : Colors.black,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}