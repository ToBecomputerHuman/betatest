import 'package:beta/main.dart';
import 'package:flutter/material.dart';
import '../constant/bottom.dart';
import '../constant/colors.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _State();
}

class _State extends State<Setting> {
  @override
  Widget build(BuildContext context) {

    final _screenwidth = MediaQuery.of(context).size.width;
    final _screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {
            Navigator.pop(context, "");
          },
            icon: Icon(Icons.arrow_back_ios_new),
            color: Color_1,
          ),
          backgroundColor: Colors.white,
          title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.search_rounded,
                    color: Color_1,
                    size: 35,
                  ),
                ),
              ],
            ),
          ),
        ),
      body: Container(
        color: backgroundColor,
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 30, bottom: 30),
                height: _screenheight * 1.5,
                width: _screenwidth * 0.85,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 5,),
                        Text(
                          '문제 추천 설정',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 20),
                        ),
                        Padding(padding: EdgeInsets.only(left: 20),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 20),
                        ),
                        Padding(padding: EdgeInsets.only(left: 20),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 20),
                        ),
                        Padding(padding: EdgeInsets.only(left: 20),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 20),
                        ),
                        Padding(padding: EdgeInsets.only(left: 20),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 20),
                        ),
                        Padding(padding: EdgeInsets.only(left: 20),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 20),
                        ),
                        Padding(padding: EdgeInsets.only(left: 20),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 20),
                        ),
                        Padding(padding: EdgeInsets.only(left: 20),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 20),
                        ),
                        Padding(padding: EdgeInsets.only(left: 20),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 1,
                        width: _screenwidth * 0.8,
                        color: Colors.black,)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 5,),
                        Text(
                          '난이도 설정',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 20),
                        ),
                        Padding(padding: EdgeInsets.only(left: 20),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 1,
                          width: _screenwidth * 0.8,
                          color: Colors.black,)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                            Icons.logout
                        ),
                        SizedBox(width: 5,),
                        Text(
                          '로그 아웃',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
        bottomNavigationBar : bottomBar(page: 3)
    );
  }
}
