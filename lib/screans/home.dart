import 'package:beta/constant/bottom.dart';
import 'package:flutter/material.dart';
import '../constant/colors.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    final _screenwidth = MediaQuery.of(context).size.width;
    final _screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: Navigator.canPop(context)
          ? IconButton(onPressed: () {
            Navigator.maybePop(context);
        },
            icon: Icon(Icons.arrow_back_ios_new),
          color: Color_1,
        ) : null,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(child:
              Text('evenUP',
                style: TextStyle(
                  color: Color_1,
                  fontSize: 25,
                  fontFamily: "myfont",
                  fontWeight: FontWeight.bold,
                ),
              ), padding: EdgeInsets.only(left: 10),),
              Padding(
          child: Icon(
        Icons.search_rounded,
        color: Color_1,
        size: 35,
      ),
          padding: EdgeInsets.only(right: 10),),
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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30, bottom: 30),
                        width: _screenwidth * 0.85,
                        height: 100,
                        color: Colors.white,
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 30),
                        width: _screenwidth * 0.85,
                        height: 500,
                        color: Colors.white,
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 30),
                        width: _screenwidth * 0.85,
                        height: 500,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              )
          )
      ),
      bottomNavigationBar : bottomBar(page: 0)
    );
  }
}