import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';

class SearchTextFieldCustom extends StatefulWidget {

  final String hintText;
  final TextInputType inputType;
  final TextInputAction inputAction;
  TextEditingController controller = TextEditingController();

  SearchTextFieldCustom(this.hintText, this.inputType, this.inputAction,this.controller);

  @override
  _TextFieldCustomState createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<SearchTextFieldCustom> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(builder: (context, orientation) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 130.h,
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(60.h, 0.w, 0.w, 0.w),
                decoration: BoxDecoration(
                  color: Constants.textFieldBgColor,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Constants.lightGrayText,
                  )
                ),
                child: TextField(
                  controller: widget.controller,
                  textAlign: TextAlign.start,
                  keyboardType: widget.inputType,
                  textInputAction: widget.inputAction,
                  style: TextStyle(
                      fontSize: Constants.subtitleTextSize,
                      fontWeight: FontWeight.w700,
                      color: Constants.blackText,
                      fontFamily: 'Bold',
                      decoration: TextDecoration.none),
                  decoration: InputDecoration(
                    hintStyle: Theme.of(context).textTheme.headline6,
                    border: InputBorder.none,
                    hintText: widget.hintText,
                  ),
                ),
              ),
            ],
          );
        });
      },
    );
  }
}