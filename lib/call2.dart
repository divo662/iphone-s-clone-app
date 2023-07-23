import 'dart:async';

import 'package:flutter/material.dart';

import 'main_page.dart';

class Call2 extends StatefulWidget {
  const Call2({Key? key}) : super(key: key);

  @override
  State<Call2> createState() => _Call2State();
}

class _Call2State extends State<Call2> {
  bool pressCall = false;
  bool pressEnd = false;
  bool pressWhite = false;
  bool pressBlack = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black26,
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 33,),
              const Text("Divine", style: TextStyle(
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
}
