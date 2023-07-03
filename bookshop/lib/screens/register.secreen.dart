import 'package:bookshop/screens/mainscreen.dart';
import 'package:flutter/material.dart';

class registerScreen extends StatefulWidget {
  const registerScreen({super.key});

  @override
  State<registerScreen> createState() => _registerScreenState();
}


class _registerScreenState extends State<registerScreen> {

  final String headerText="İris Yolculuğu";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Center(
              child: Text(
                headerText,
                style: TextStyle(fontSize: 40, fontStyle: FontStyle.italic),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: TextField(
          
              autofocus: true,
              autofillHints: {AutofillHints.name},
              keyboardType: TextInputType.name,
              cursorColor: Colors.pink,
              maxLength: 10,
              obscureText: false,
              readOnly: false,
              decoration: _inputdecoration().nameinput,
          
          
            ),

          ),
          TextField(
          
              autofocus: true,
              autofillHints: {AutofillHints.name},
              keyboardType: TextInputType.name,
              cursorColor: Colors.pink,
              maxLength: 30,
              obscureText: false,
              readOnly: false,
              decoration: _inputdecoration().emailinput,
          
          
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {

        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>mainPage()));
      },
      backgroundColor: Color.fromARGB(0, 253, 2, 191),elevation: 10,
       child: Icon(Icons.arrow_right_alt_sharp,color: Colors.black,size: 40,),
      ),

    );
  }
}

class _inputdecoration{

  final nameinput=InputDecoration(
fillColor: const Color.fromARGB(255, 238, 80, 133),
                filled: true,
                label: Text("İsim Giriniz"),
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),

  );
  final emailinput=InputDecoration(
fillColor: const Color.fromARGB(255, 238, 80, 133),
                filled: true,
                label: Text("Email Giriniz"),
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),

  );
}
