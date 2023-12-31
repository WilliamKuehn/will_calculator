import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String userInput = " ";
  String result = "0";
  List<String> buttonList = [
    'AC',
    ')',
    '(',
    '/',
    '7',
    '8',
    '9',
    '*',
    '4',
    '5',
    '6',
    '+',
    '1',
    '2',
    '3',
    '-',
    'c',
    '0',
    '.',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 43, 43, 43),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height/3,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.centerRight,
                  child: Text(
                    userInput,
                    style: const TextStyle(
                      fontSize: 32,
                      color: Colors.white
                    ),
                  )
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.centerRight,
                  child: Text(
                    result,
                    style: const TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,

                    ),
                  )
                ),
              ],
            ),
           ),
           const Divider( color: Colors.white),
           Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: GridView.builder(
                itemCount: buttonList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                ),
                itemBuilder: (BuildContext context, int index){
                  return CustomButton(buttonList[index]);
                }
              ),
            )
          )
        ],
      ),
    );
  }
  Widget CustomButton(String text){
    return InkWell(
      splashColor: Colors.black,
      onTap: (){},
      child: Ink(
        decoration: BoxDecoration(
          color: getBgColor(text),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [ BoxShadow(
            color: Colors.white.withOpacity(0.1),
            blurRadius: 4,
            spreadRadius: 0.5,
            offset: const Offset(-3, -3),
          )
          ]
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: getColor(text),
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
          ),
        )
      )
    );
  }
  getColor(String text){
    if(text == "/" || text == "/"||text == "/"||text == "/"||text == "/"||text == "/"||text == "/")
  }
}

//change if statement to any function button
//AT 8:51 in the video
//Link: https://www.youtube.com/watch?v=6VwahA4BqtM