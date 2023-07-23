import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phone/call3.dart';

import 'Modal.dart';




 Color buttonColor = Colors.grey.shade900;
Color gColor = Colors.grey.shade900;
class Keypad extends StatefulWidget {
  const Keypad({Key? key}) : super(key: key);

  @override
  State<Keypad> createState() => _KeypadState();
}

class _KeypadState extends State<Keypad> {

  final items = [
    "Create New Contact",
    "Add to Existing Contact"
  ];
  String? value;
  double firstNum = 0.0;
  double secondNum = 0.0;
  var input = "";
  var operation = "";
  var hideInput = false;

  oneButtonClick (value){
   if(value == "x"){
    if(input.isNotEmpty){
      input = input.substring(0, input.length - 1);}
  } else {
    input = input + value;
    hideInput = false;

  }
  setState(() {

  });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(height: 20,),
          Expanded(
            child:
            Container(
              padding: const EdgeInsets.all(22),
              width: double.infinity,

              child: Center(

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [
                    const SizedBox(height: 70,),
                    Text(input,
                      style: const TextStyle(
                          fontSize: 48,
                          color: Colors.white
                      ),
                    ),
                    const SizedBox(height: 5,),
                    DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                          dropdownColor: Colors.grey.shade800,
                            elevation: 0,
                            items: items.map(buildMenuItem).toList(),
                            onChanged: (value) => setState(() {
                              value = value;
                            }),

                          hint: const Text("Add Number", style: TextStyle(
                            color: Colors.blue,
                            fontSize: 23
                          ),),
                          icon: const Icon(CupertinoIcons.plus, color: Colors.black,),
                        alignment: Alignment.center,
                        ),
                    ),

                  ],
                ),
              ),
            ),
          ),
         Padding(
           padding: const EdgeInsets.all(15),
           child: Column(
             children: [
               Row(
                 children: [
                   button(text: "1",  ),
                   button(text: "2", ),
                   button(text: "3", ),
                 ],
               ),
               Row(
                 children: [
                   button(text: "4",),
                   button(text: "5", ),
                   button(text: "6", ),

                 ],
               ),
               Row(
                 children: [
                   button(text: "7", ),
                   button(text: "8", ),
                   button(text: "9", ),

                 ],
               ),
               Row(
                 children: [
                   button(text: "*", ),
                   button(text: "0", ),
                   button(text: "#", ),

                 ],
               ),
               Padding(
                 padding: const EdgeInsets.all(9.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     const SizedBox(width: 119,),
                     ElevatedButton(
                         onPressed: () {
                           Navigator.pushReplacement(
                               context, MaterialPageRoute(
                               builder: (context) => const Call3()
                           )
                           );
                         },
                         style: ElevatedButton.styleFrom(
                           padding: const EdgeInsets.all(18),
                           backgroundColor: Colors.green.shade800,
                           shape: const CircleBorder(
                               side: BorderSide.none
                           ),
                         ),
                         child: const Icon(Icons.phone, size: 47,)
                     ),
                     const SizedBox(width: 65,),
                     IconButton(onPressed:() => oneButtonClick("x"),
                         padding: const EdgeInsets.all(5),
                         color: Colors.grey.shade800,
                         icon: const Icon(CupertinoIcons.delete_left_fill, size: 30,))
                   ],
                 ),
               )
             ],
           ),
         )
        ],
      ),
    );
  }
  Widget button({text, }){
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(12.0),
        child:
        ElevatedButton(
          onPressed: () => oneButtonClick(text),
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(25), backgroundColor: Colors.grey.shade900,
              shape: const CircleBorder(
                side: BorderSide.none
              ),
          ),
          child: Text(text,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 25
            ),),
        ),
      ),
    );
  }
  DropdownMenuItem<String> buildMenuItem(String item) =>
      DropdownMenuItem(
        value: item,
      child: GestureDetector(
        onTap: (){
          Navigator.pushReplacement(
              context, MaterialPageRoute(
              builder: (context) => const ModalPage()));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              item,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
            const Icon(CupertinoIcons.person_alt_circle)
          ],
        ),
      ),);

}

