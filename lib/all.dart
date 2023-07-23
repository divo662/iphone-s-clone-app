import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phone/call3.dart';
import 'package:phone/calling.dart';
import 'package:phone/phone2.dart';

import 'call2.dart';

class AllPage extends StatefulWidget {
  const AllPage({Key? key}) : super(key: key);

  @override
  State<AllPage> createState() => _AllPageState();
}

class _AllPageState extends State<AllPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20,),
              const Row(
                children: [
                  SizedBox(width: 36,),
                  Text("Recents",
                    style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),),
                ],
              ),
              const SizedBox(height: 8,),
              const SizedBox(height: 200,),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text("No Recents",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.grey.shade800
                  ),),
              ),
              // GestureDetector(
              //   onTap: (){
              //     Navigator.push(context,
              //         MaterialPageRoute(builder: (context)=> const Call3()));
              //   },
              //   child: Container(
              //     height: 60,
              //     width: MediaQuery.of(context).size.width,
              //     decoration: BoxDecoration(
              //       color: Colors.transparent,
              //       border: Border(
              //         top: BorderSide(
              //           color: Colors.grey.shade600,
              //           width: 1
              //         ),
              //         bottom:  BorderSide(
              //             color: Colors.grey.shade600,
              //             width: 0.5
              //         ),
              //       )
              //     ),
              //     child: Row(
              //       children: [
              //         const SizedBox(width: 5,),
              //         Icon(Icons.phone_callback_outlined,
              //           color: Colors.grey.shade700,),
              //         Column(
              //           children: [
              //             const SizedBox(height: 10,),
              //             const Padding(
              //               padding: EdgeInsets.only(left: 4),
              //               child: Text("08167714163",
              //               style: TextStyle(
              //                 color: Colors.white,
              //                 fontSize: 20,
              //                 fontWeight: FontWeight.bold
              //               ),),
              //             ),
              //             Padding(
              //               padding: const EdgeInsets.only(right: 55),
              //               child: Text("unknown",
              //               style: TextStyle(
              //                 color: Colors.grey.shade700,
              //                 fontSize: 16
              //               ),),
              //             )
              //           ],
              //         ),
              //         const SizedBox(width: 155,),
              //         Text("20:02",
              //           style: TextStyle(
              //               color: Colors.grey.shade600,
              //               fontSize: 18,
              //           ),),
              //         const SizedBox(width: 5,),
              //         GestureDetector(
              //           onTap: (){
              //
              //           },
              //           child: const Icon(CupertinoIcons.info,
              //           size: 27,
              //           color: Colors.blue,),
              //         )
              //       ],
              //     ),
              //   ),
              // ),
              // GestureDetector(
              //   onTap: (){
              //     Navigator.push(context,
              //         MaterialPageRoute(builder: (context)=> const Call2()));
              //   },
              //   child: Container(
              //     height: 60,
              //     width: MediaQuery.of(context).size.width,
              //     decoration: BoxDecoration(
              //         color: Colors.transparent,
              //         border: Border(
              //           bottom:  BorderSide(
              //               color: Colors.grey.shade600,
              //               width: 0.8
              //           ),
              //         )
              //     ),
              //     child: Row(
              //       children: [
              //         const SizedBox(width: 5,),
              //         Icon(Icons.phone_callback_outlined,
              //           color: Colors.grey.shade700,),
              //         Column(
              //           children: [
              //             const SizedBox(height: 10,),
              //             const Padding(
              //               padding: EdgeInsets.only(right: 53),
              //               child: Text("Divine",
              //                 style: TextStyle(
              //                     color: Colors.white,
              //                     fontSize: 20,
              //                     fontWeight: FontWeight.bold
              //                 ),),
              //             ),
              //             Padding(
              //               padding: const EdgeInsets.only(right: 57),
              //               child: Text("mobile",
              //                 style: TextStyle(
              //                     color: Colors.grey.shade700,
              //                     fontSize: 16
              //                 ),),
              //             )
              //           ],
              //         ),
              //         const SizedBox(width: 177,),
              //         Text("19:59",
              //           style: TextStyle(
              //             color: Colors.grey.shade600,
              //             fontSize: 18,
              //           ),),
              //         const SizedBox(width: 5,),
              //         GestureDetector(
              //           onTap: () {
              //               Navigator.push(context,
              //                   MaterialPageRoute(
              //                       builder: (context) => const Phone2()));
              //             },
              //           child: const Icon(CupertinoIcons.info,
              //             size: 27,
              //             color: Colors.blue,),
              //         )
              //       ],
              //     ),
              //   ),
              // ),
              // GestureDetector(
              //   onTap: (){
              //     Navigator.push(context,
              //         MaterialPageRoute(builder: (context)=> const CallPage()));
              //   },
              //   child: Container(
              //     height: 60,
              //     width: MediaQuery.of(context).size.width,
              //     decoration: BoxDecoration(
              //         color: Colors.transparent,
              //         border: Border(
              //
              //           bottom:  BorderSide(
              //               color: Colors.grey.shade600,
              //               width: 0.5
              //           ),
              //         )
              //     ),
              //     child: Row(
              //       children: [
              //         const SizedBox(width: 5,),
              //         Icon(Icons.phone_callback_outlined,
              //           color: Colors.grey.shade700,),
              //         Column(
              //           children: [
              //             const SizedBox(height: 10,),
              //             const Padding(
              //               padding: EdgeInsets.only(right: 58),
              //               child: Text("Abigail",
              //                 style: TextStyle(
              //                     color: Colors.white,
              //                     fontSize: 20,
              //                     fontWeight: FontWeight.bold
              //                 ),),
              //             ),
              //             Padding(
              //               padding: const EdgeInsets.only(right: 60),
              //               child: Text("mobile",
              //                 style: TextStyle(
              //                     color: Colors.grey.shade700,
              //                     fontSize: 16
              //                 ),),
              //             )
              //           ],
              //         ),
              //         const SizedBox(width: 166,),
              //         Text("19:57",
              //           style: TextStyle(
              //             color: Colors.grey.shade600,
              //             fontSize: 18,
              //           ),),
              //         const SizedBox(width: 5,),
              //         GestureDetector(
              //           onTap: (){},
              //           child: const Icon(CupertinoIcons.info,
              //             size: 27,
              //             color: Colors.blue,),
              //         )
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        )
    );
  }
}
