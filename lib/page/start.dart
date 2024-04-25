import 'dart:js';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/main.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    test1() {
      debugPrint("生まれたよ");
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('教典が入るところ'),
        backgroundColor: const Color.fromARGB(255, 34, 93, 67),
      ),
      body: SizedBox.expand(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background_pig.png'),
                fit: BoxFit.cover),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, 
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 500,
                height: 350,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: test1,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 34, 93, 67),
              ),
                child: const Text("誕生する", style: TextStyle(color: Colors.white))),
            ]
          ),
        ),
      ),
    );
  }
}

/*Stack(
              children: [
                Container(
                    padding: EdgeInsets.all(20),
                    child: Image.asset('assets/images/logo.png')),
                ElevatedButton(
                    onPressed: xxxx,
                    child: Text("誕生する", style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 34, 93, 67),
                    )),
              ],
            ),*/
