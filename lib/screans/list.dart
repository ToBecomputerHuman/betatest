import 'package:flutter/material.dart';
import '../constant/bottom.dart';
import '../constant/colors.dart';

class ProblemList extends StatefulWidget {
  const ProblemList({super.key});

  @override
  State<ProblemList> createState() => _ProblemListState();
}

class _ProblemListState extends State<ProblemList> {

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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 30, bottom: 30),
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
        bottomNavigationBar : bottomBar(page: 1)
    );
  }
}
