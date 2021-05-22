import 'package:flutter/material.dart';

import 'package:english_words/english_words.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(Rose());

class Rose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My test App"),
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Center(
            child: ListView.builder(
              itemCount: 30,
              itemBuilder: (context, index) {
                return Container(
                  height: 70,
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[300]),
                    borderRadius: BorderRadius.all(
                        Radius.circular(
                            6.0) //                 <--- border radius here
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(child: Text("Rice", style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Ratings"),
                          Text("Price"),

                        ],
                      ),
                      SizedBox(width: 16,),
                      Icon(Icons.favorite, size: 18, color: Colors.pink,),
                    ],
                  ),
                );
              },

            ),
          ),
        ),

      ),
    );
  }
}


