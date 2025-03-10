import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onboarding_screen/home_Screen.dart';
import 'package:onboarding_screen/sign_In.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../controllers/user_controller.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Image(image: AssetImage('assets/images/Color.png')),

          Expanded(
              child: PageView(
            controller: _controller,
            children: [
              Column(
                children: [
                  Column(children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 60, horizontal: 30)),
                    Image(image: AssetImage('assets/images/4BUDGETTING.png')),
                    SizedBox(height: 40,),
                    Text('Friendly Broker',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 28)),
                    SizedBox(height: 30,),
                    Text(
                      'Friendly broker is a must have if you want to be successful in your financial life.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFA6A6A6),
                        fontSize: 17,
                      ),
                    ),
                  ],),
                ],
              ),
              Column(children: [
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 60, horizontal: 30)),
                Image(image: AssetImage('assets/images/4BUDGETTING.png')),
                SizedBox(height: 40,),
                Text('Great Analytics',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 28)),
                SizedBox(height: 30,),
                Text(
                  'Amazing analytics for you to keep track of your stocks, expenses, savings and your currencies.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA6A6A6),
                    fontSize: 17,
                  ),
                ),
              ],),
              Column(children: [
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 60, horizontal: 30)),
                Image(image: AssetImage('assets/images/4BUDGETTING.png')),
                SizedBox(height: 40,),
                Text('Compare Stocks',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 28)),
                SizedBox(height: 30,),
                Text(
                  'Compare your stocks easily with the help of the free built-in compare feature in the app.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA6A6A6),
                    fontSize: 17,
                  ),
                ),
              ],),
            ],
          )
          ),
          Column(
            children: [Padding(padding: EdgeInsets.only(bottom: 50)),
              SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: WormEffect(
                      activeDotColor: Color(0xFFDD6140),
                      dotColor: Color(0xFFEDA997)),
                  onDotClicked: (index) {}),
              SizedBox(height: 90,),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize:Size(208, 58),
                        backgroundColor: Color(0xFFDD6140),
                        foregroundColor: Color(0xFFFFFFFF)),
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen() ));
                    },
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> UserController.user !=null? HomeScreen() : SignIn()));
                      },
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 21),
                      ),
                    )),
              )
            ],
          ),
        ],
      ),
    );
  }
}



