import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool? isChecked = false; // State variable for checkbox
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20)),
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hello,\nMy Notes',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w400)),
                Icon(
                  Icons.tune,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            child: TextField(
              //height: 56,width: 388,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFF1F1F1F),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF1F1F1F)),
                      borderRadius: BorderRadius.circular(9)),
                  hintText: 'Search Here',
                  prefixIcon: Icon(Icons.search),
                  hintStyle: TextStyle(fontSize: 20, color: Colors.white70),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9))),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 188,
            width: 388,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: Color(0xFF1F1F1F),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '28 May',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.white70),
                    ),
                    Icon(
                      Icons.ios_share,
                      color: Colors.white,
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Text(
                        'Task Management App Ui Design',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                      Text(
                        'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used.',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.white70),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 7,
                            width: 7,
                            color: Color(0xFF7DB634),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Just Now',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Colors.white70),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 188,
            width: 388,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: Color(0xFF1F1F1F),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '12 May',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.white70),
                    ),
                    Icon(
                      Icons.ios_share,
                      color: Colors.white,
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Text(
                        'Shopping List',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value ?? false;
                                    });
                                  }),
                              Text(
                                'Apple',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Colors.white70),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value ?? true;
                                    });
                                  }),
                              Text(
                                'Mango Juice',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Colors.white70),
                              )
                            ],
                          ),

                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
