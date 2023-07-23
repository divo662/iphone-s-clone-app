import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phone/main_page.dart';

import 'dodo.dart';
import 'dodo2.dart';

Color buttonColor = Colors.grey.shade900;
Color gColor = Colors.grey.shade900;

class CallPage extends StatefulWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  TextEditingController searchEditor = TextEditingController();
  final dodoList = DoDo.dodoList();
  List<DoDo> _foundDoDO = [];
  bool pressCall = false;
  bool pressEnd = false;
  bool pressWhite = false;
  bool pressBlack = false;
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
  void initState() {
    // TODO: implement initState
    super.initState();
    _foundDoDO = dodoList;
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black26,
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 33,),
              const Text("Abigail", style: TextStyle(
                color: Colors.white,
                fontSize: 35
              ),),
              const SizedBox(height: 6,),
              pressCall?  Text("call ended" ,
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 25
              ),) :
              Text("calling mobile..." ,
                style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 25
                ),) ,
              const SizedBox(height: 103,),
              Padding(
                padding: const EdgeInsets.all(36.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        ElevatedButton
                          (onPressed: (){
                            setState(() {
                              pressWhite = ! pressWhite;
                            });
                        },
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(80, 80),
                              backgroundColor: pressWhite ? Colors.white : Colors.grey.shade900,
                              shape: const CircleBorder(
                              ),
                            ),
                            child:  Icon( Icons.mic_off_sharp,
                            size: 41,
                            color: pressWhite ? Colors.black : Colors.white,)
                        ),
                        const Text("mute", style: TextStyle(
                          color: Colors.white,
                          fontSize: 19.4
                        ),)
                      ],
                    ),
                    const SizedBox(width: 6,),
                    Column(
                      children: [
                        ElevatedButton
                          (onPressed: (){
                          showBottomSheet(context: context,
                              builder: (context){
                            return Container(
                              height: 750,
                              child: Column(
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
                          });
                        },
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(80, 80),
                              backgroundColor: Colors.grey.shade900,
                              shape: const CircleBorder(
                              ),
                            ),
                            child: const Icon(Icons.dialpad,
                              size: 41,)
                        ),
                        const Text("keypad", style: TextStyle(
                            color: Colors.white,
                            fontSize: 19.4
                        ),)
                      ],
                    ),
                    const SizedBox(width: 6,),
                    Column(
                      children: [
                        ElevatedButton
                          (onPressed: (){
                          setState(() {
                            pressBlack = !  pressBlack;
                          });
                        },
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(80, 80),
                              backgroundColor: pressBlack ? Colors.white : Colors.grey.shade900,
                              shape: const CircleBorder(
                              ),
                            ),
                            child: Icon(Icons.volume_up_sharp,
                              size: 41,
                            color:  pressBlack ? Colors.black : Colors.white,)
                        ),
                        const Text("speaker", style: TextStyle(
                            color: Colors.white,
                            fontSize: 19.4
                        ),)
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Column(
                      children: [
                        const SizedBox(width: 6,),
                        ElevatedButton
                          (onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(80, 80),
                              backgroundColor: Colors.grey.shade900.withOpacity(0.2),
                              shape: const CircleBorder(
                              ),
                            ),
                            child:  Icon(Icons.add,
                              size: 41,
                            color: Colors.white.withOpacity(0.15),)
                        ),
                       Text("add call", style: TextStyle(
                            color: Colors.white.withOpacity(0.15),
                            fontSize: 19.4
                        ),)
                      ],
                    ),
                    const SizedBox(width: 6,),
                    Column(
                      children: [
                        ElevatedButton
                          (onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(80, 80),
                              backgroundColor: Colors.grey.shade900.withOpacity(0.2),
                              shape: const CircleBorder(
                              ),
                            ),
                            child: Icon(Icons.video_camera_front,
                              size: 41,
                                color: Colors.white.withOpacity(0.15))
                        ),
                         Text("FaceTime", style: TextStyle(
                            color: Colors.white.withOpacity(0.15),
                            fontSize: 19.4
                        ),)
                      ],
                    ),
                    const SizedBox(width: 6,),
                    Column(
                      children: [
                        ElevatedButton
                          (onPressed: (){
                          showBottomSheet(context: context, builder:
                              (context) {
                            return SingleChildScrollView(
                              child: Container(
                                padding: const EdgeInsets.all(22),
                                height: 750,
                                color: Colors.black,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceBetween,
                                      children: [
                                        Container(
                                          width: 277,
                                          height: 37,
                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade900,
                                              borderRadius: BorderRadius.circular(
                                                  10)
                                          ),
                                          child: TextField(
                                            controller: searchEditor,
                                            onChanged: (value) => _runFilter(value),
                                            style:  TextStyle(
                                                fontSize: 20,
                                                color: Colors.grey.shade400
                                            ),
                                            decoration: InputDecoration(
                                                prefixIcon: Icon(
                                                  Icons.search,
                                                  color: Colors.grey.shade400,),
                                                suffixIcon: GestureDetector(
                                                  onTap: () {
                                                    searchEditor.clear();
                                                  },
                                                  child: Icon(
                                                    CupertinoIcons
                                                        .xmark_circle_fill,
                                                    size: 20,
                                                    color: Colors.grey.shade600,),
                                                ),
                                                border: InputBorder.none,
                                                hintText: 'Search',
                                                hintStyle:  TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.grey.shade400
                                                ),
                                                contentPadding: const EdgeInsets
                                                    .symmetric(
                                                    vertical: 2, horizontal: 10
                                                )
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              color: Colors.transparent,
                                            ),
                                            child: const Text(
                                              "Cancel",
                                              style: TextStyle(
                                                  fontSize: 16.5,
                                                  color: Colors.blue
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 10,),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          border: Border(
                                              top: BorderSide(
                                                  color: Colors.grey.shade800,
                                                  width: 0.5),
                                              bottom: BorderSide(
                                                  color: Colors.grey.shade800,
                                                  width: 0.6)
                                          )
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.5),
                                            child: Row(
                                              children: [
                                                CircleAvatar(
                                                  radius: 46,
                                                  backgroundColor: Colors.grey
                                                      .shade400,
                                                  child: const Icon(
                                                    Icons.person, size: 56,),
                                                ),
                                                // MY CARD CODE................
                                                const SizedBox(width: 13,),
                                                Column(
                                                  children: [
                                                    const Text("Divine Nzeh",
                                                      style: TextStyle(
                                                          fontWeight: FontWeight
                                                              .bold,
                                                          fontSize: 24,
                                                          color: Colors.white
                                                      ),),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .only(right: 60),
                                                      child: Text("My Card",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.grey
                                                                .shade600
                                                        ),),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                          const SizedBox(height: 20),
                                          const Padding(
                                            padding: EdgeInsets.only(right: 325),
                                            child: Text("A",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white
                                              ),),
                                          ),
                                          const SizedBox(height: 10,),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 0,),
                                    // NO CONTACT YET CODE...............
                                    for(DoDo dodoo in _foundDoDO.reversed)
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            border: Border(
                                                top: BorderSide(color: Colors.grey.shade800,
                                                    width: 0.6),
                                                bottom: BorderSide(color: Colors.grey.shade800,
                                                    width: 0.9)
                                            )
                                        ),
                                        child: DoDOItem(
                                          doDo: dodoo,
                                          onDoDoChanged: _handleDoDOChange,
                                          onDeleteItem: null,

                                        ),
                                      ),
                                    const SizedBox(height: 10,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("6 Contacts",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.grey.shade400
                                          ),)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                        },
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(80, 80),
                              backgroundColor: Colors.grey.shade900,
                              shape: const CircleBorder(
                              ),
                            ),
                            child: const Icon(Icons.person_rounded,
                              size: 41,)
                        ),
                        const Text("contacts", style: TextStyle(
                            color: Colors.white,
                            fontSize: 19.4
                        ),)
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 60,),
              ElevatedButton
                (onPressed: (){
                  setState(() {
                    pressEnd = ! pressEnd;
                    pressCall = ! pressCall;
                  });
                  Timer(const Duration(seconds: 3), () {
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => const MainPage()
                        )
                    );
                  });

              },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(80, 80),
                    backgroundColor: Colors.red.shade700,
                    shape: const CircleBorder(
                    ),
                  ),
                  child:  const Icon(Icons.call_end_sharp,
                    size: 41,
                    color: Colors.white,)
              ),

            ],
          ),
        ),
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
  void _handleDoDOChange(DoDo dodo){
    setState(() {
      dodo.isBone = ! dodo.isBone;
    });
  }
  void _runFilter(String enteredKeyword) {
    List<DoDo> results = [];
    if (enteredKeyword.isEmpty) {
      results = dodoList;
    } else {
      results = dodoList
          .where((item) =>
          item.dodoText!
              .toLowerCase()
              .contains(enteredKeyword
              .toLowerCase())).toList();
    }
    setState(() {
      _foundDoDO = results;
    });
  }
}
