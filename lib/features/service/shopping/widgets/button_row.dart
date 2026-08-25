import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///-----------------------------[Without Screen Util]------------------------
/*
class ButtonRow extends StatelessWidget {
  const ButtonRow({super.key, this.childList = const [Text('ajajali'), Text('2'), Text('3')]});
  // final Widget childWidget;
  final List<Widget?> childList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return button(index);
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: 10);
        },
        itemCount: childList.length,
      ),
    );
  }

  Container button(int i) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Color(0XFFE3E3E3), width: 1),
      ),
      child: childList[i],
    );
  }
}
*/
///-----------------------------[WithScreen Util]------------------------

class ButtonRow extends StatelessWidget {
  const ButtonRow({super.key, this.childList = const [Text('ajajali'), Text('2'), Text('3')]});
  // final Widget childWidget;
  final List<Widget?> childList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return button(index);
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: 10.w);
        },
        itemCount: childList.length,
      ),
    );
  }

  Container button(int i) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(color: Color(0XFFE3E3E3), width: 1),
      ),
      child: childList[i],
    );
  }
}
