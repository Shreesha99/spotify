import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MainPage extends StatelessWidget{
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(100, 20, 50, 5.5),
            Color(0xFF3b8d99),
          ],
          begin: Alignment.bottomLeft,
          end: FractionalOffset(0.4, 0.4)
        ),
      ),
      child: ListView(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(45.0),
                  height: 250.0,
                  child: Column(
                    children: <Widget>[
                      Text('Look back to your Recent', style: TextStyle(color:Colors.black54.withOpacity(1.0),
                      fontSize: 19.0,
                        fontWeight: FontWeight.bold,
                      ),),
                      Padding(padding: EdgeInsets.all(10.0),),
                      Container(
                        height: 165.0,
                        child: ListView.builder(
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index){
                            return Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 130.0,
                                  width: 140.0,
                                  child: Image.asset('assets/1.jpeg',fit: BoxFit.fitHeight,),
                                ),
                              ],
                            );
                          },
                        )
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}