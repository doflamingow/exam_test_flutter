import 'package:flutter/material.dart';

import 'package:test2/utils/app_sizes.dart';
import 'package:test2/utils/cons_colors.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: size.width,
      color: mainBg,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: Sizes.s80, vertical: Sizes.s10),
            child: Image(
              height: Sizes.s500 ,
              width: Sizes.s500 ,
              image: AssetImage(
                'assets/images/empty.png',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Sizes.s10),
            child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "Dalam Pengembangan",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: FontSize.s15,
                      fontWeight: FontWeight.w700,
                      color: grey),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

 }
