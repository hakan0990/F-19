import 'package:bookshop/screens/register.secreen.dart';
import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5)).then((value) => Navigator.push(
        context, MaterialPageRoute(builder: (context) => registerScreen())));
    super.initState();
  }

  final String centerText = "İrise Hoşgeldiniz";
  final String centerTextsubtitle = "Bu Güzel Yolculuğa Hazır Mısınız ?";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          children: [
            Container(
              child: Image.asset(
                "assets/images/iris.png",
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width/2,
                
               
              ),
            ),
            SizedBox(height: 50,),
            Center(
              child: Text(
                centerText,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Text(
                centerTextsubtitle,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            )
          ],
        ),
      ),
    );
  }
}
