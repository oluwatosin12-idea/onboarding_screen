import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmailPassword extends StatefulWidget {
  const EmailPassword({super.key});

  @override
  State<EmailPassword> createState() => _EmailPasswordState();
}

class _EmailPasswordState extends State<EmailPassword> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(15)),
            TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Color(0xFF585252)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Color(0xFF585252)),
                  ),
                  hintText: 'johnsonjohn@gmail.com',
                  hintStyle: TextStyle(color: Colors.black),
                  labelText: 'Email'),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 40,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Color(0xFF585252)),
                ),
                hintStyle: TextStyle(color: Colors.black),
                labelText: 'Password',
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isObscured = !_isObscured;
                      });
                    },
                    icon: Icon(_isObscured
                        ? Icons.visibility_off
                        : Icons.visibility)),
              ),
              keyboardType: TextInputType.visiblePassword,
              obscureText: _isObscured,
            ),
          ],
        ),
      ),
    );
  }
}
