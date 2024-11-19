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
                  children: [
                    Row(),
                    Row(),
                    Row(),
                    Row(),
                    Row(),
                    Row(),
                    Row(),
                    Row(),
                    Row(),
                    Row(),
                    Row(),
                    Row(),
                    Row(),
                    Row(),
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
