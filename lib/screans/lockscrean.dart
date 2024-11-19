import 'package:flutter/material.dart';
import '../constant/colors.dart';
import 'package:beta/screans/home.dart';

class lock extends StatelessWidget {
  const lock({super.key});

  @override
  Widget build(BuildContext context) {

    final _screenwidth = MediaQuery.of(context).size.width;
    final _screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        color: backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text('evenUP',
                style: TextStyle(
                fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Color_1,
                  fontFamily: 'myfont',
                ),
                ),
                SizedBox(height: 40,),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ElevatedButton(onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(),
                        ),
                      );
                    },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("image/back.jpg", width: 40,),
                            SizedBox(width: 40,),
                            Text('백준으로 시작하기',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        )
                    ),
                    SizedBox(height: 4,),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ),
                        );
                      },
                      child: Text(
                        'Guest Login',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 60,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
