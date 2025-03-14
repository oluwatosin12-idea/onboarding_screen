import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:onboarding_screen/log_out.dart';
import 'package:onboarding_screen/profile.dart';
import 'package:onboarding_screen/settings.dart';
import 'package:onboarding_screen/sign_In.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isAppleChecked = false;
  bool isMangoChecked = false;
  bool isBananaChecked = false;

  // String? selectedItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          ListView(
          children: [Column(
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
                    PopupMenuButton(
                      color: Color(0xFF1F1F1F),
                      icon: Icon(Icons.tune,
                          color: Colors.white,),
                        onSelected: (value) {
                         if (value == 'log Out')  {
                            FirebaseAuth.instance.signOut();
                            GoogleSignIn().signOut();
                           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LogOut()));
                         } else if (value == 'settings'){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings() ));
                         } else if (value== 'profile'){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile()));
                         };
                        },
                        itemBuilder: (context)=>[
                          PopupMenuItem(
                              value: 'log Out',
                              child: Text('Log Out', style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.white))),
                          PopupMenuItem(
                              value: 'settings',
                              child: Text('Settings', style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.white))),
                          PopupMenuItem(
                              value: 'profile',
                              child: Text('Profile', style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.white)))
                        ])
                    // Icon(
                    //   Icons.tune,
                    //   color: Colors.white,
                    // )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                child: TextField(
                  style: TextStyle(color:Colors.white),
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
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 15,
                        )),
                        Text(
                          '28 May',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.white70),
                        ),
                        SizedBox(
                          width: 280,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Text(
                                'Task Management App UI Design',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used.',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white70),
                            ),
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
              SizedBox(height: 20),
              Container(
                height: 219,
                width: 388,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: Color(0xFF1F1F1F),
                ),
                child: Column(
                  children: [
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 15,
                        )),
                        Text(
                          '12 May',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.white70),
                        ),
                        SizedBox(
                          width: 280,
                        ),
                        Icon(
                          Icons.ios_share,
                          color: Colors.white,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        //Padding(padding: EdgeInsets.only(right: 10)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Text(
                              'Shopping List',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                    value: isAppleChecked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isAppleChecked = value ?? false;
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
                                    value: isMangoChecked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isMangoChecked = value ?? false;
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
                            Row(
                              children: [
                                Checkbox(
                                    value: isBananaChecked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isBananaChecked = value ?? false;
                                      });
                                    }),
                                Text(
                                  'Banana 5 pcs with ',
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
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 219,
                width: 388,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: Color(0xFF1F1F1F),
                ),
                child: Column(
                  children: [
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 15,
                            )),
                        Text(
                          '12 May',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.white70),
                        ),
                        SizedBox(
                          width: 280,
                        ),
                        Icon(
                          Icons.ios_share,
                          color: Colors.white,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        //Padding(padding: EdgeInsets.only(right: 10)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Text(
                              'Shopping List',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                    value: isAppleChecked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isAppleChecked = value ?? false;
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
                                    value: isMangoChecked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isMangoChecked = value ?? false;
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
                            Row(
                              children: [
                                Checkbox(
                                    value: isBananaChecked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isBananaChecked = value ?? false;
                                      });
                                    }),
                                Text(
                                  'Banana 5 pcs with ',
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
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 219,
                width: 388,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: Color(0xFF1F1F1F),
                ),
                child: Column(
                  children: [
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 15,
                            )),
                        Text(
                          '12 May',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.white70),
                        ),
                        SizedBox(
                          width: 280,
                        ),
                        Icon(
                          Icons.ios_share,
                          color: Colors.white,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        //Padding(padding: EdgeInsets.only(right: 10)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Text(
                              'Shopping List',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                    value: isAppleChecked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isAppleChecked = value ?? false;
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
                                    value: isMangoChecked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isMangoChecked = value ?? false;
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
                            Row(
                              children: [
                                Checkbox(
                                    value: isBananaChecked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isBananaChecked = value ?? false;
                                      });
                                    }),
                                Text(
                                  'Banana 5 pcs with ',
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
                  ],
                ),
              ),
            ],
          )],
        ),
          Positioned(
            bottom: 10,
            child: Container(
              margin: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.view_headline,size: 30,
                    color: Colors.white,
                  ),
                  SizedBox(width: 300),
                  FloatingActionButton(
                    backgroundColor: Color(0xFF5F5AC9),
                    foregroundColor: Color(0xFFFFFFFF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80)),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("What do you need?"),
                            content: Row(
                              children: [
                                Text(
                                  'New Notes?',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Colors.black),
                                ),
                                SizedBox(width: 5,),
                                Icon(Icons.note_add, color: Colors.black,)
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pop();
                                },
                                child: Text("Done",style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Colors.black)),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Icon(Icons.add),
                  )
                ],
              ),
            ),
          )
        ]
      ),
    );
  }
}
