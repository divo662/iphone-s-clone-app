import 'package:flutter/material.dart';

import 'call2.dart';
import 'contact_list.dart';
import 'main_page.dart';

class Phone2 extends StatefulWidget {
  const Phone2({Key? key}) : super(key: key);

  @override
  State<Phone2> createState() => _Phone2State();
}

class _Phone2State extends State<Phone2> {
  bool blueColor = false;
  Contacts myNames = Contacts(firstName: ""
      , lastName: "", phoneNumber: "");
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){
          Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => const MainPage()));
        },
            icon: const Icon(Icons.arrow_back_ios_new_rounded,
              color: Colors.blue,)),
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Contacts",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20
              ),),
            TextButton(
                onPressed: (){},
                child: const Text("Edit",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20
                  ),))
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 46,
                  backgroundColor: Colors.grey.shade600,
                  child:Icon(Icons.person, size: 56, color: Colors.grey.shade400,),
                ),
                const SizedBox(height: 7,),
                 const Text("Divine",
                  style: TextStyle(color: Colors.white,
                      fontSize: 32),),
                const SizedBox(height: 12,),
                Row(
                  children: [
                    const SizedBox(width: 4,),
                    Container(
                      height: 59,
                      width: 82,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade900,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.messenger_rounded, color: Colors.blue,),
                          Text("message",
                            style: TextStyle(color: Colors.blue,
                                fontSize: 14),),
                        ],
                      ),
                    ),
                    const SizedBox(width: 9,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => const Call2()));
                      },
                      child: Container(
                        height: 59,
                        width: 82,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.call, color: Colors.blue,),
                            Text("call",
                              style: TextStyle(color: Colors.blue,
                                  fontSize: 16),),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 9,),
                    Container(
                      height: 59,
                      width: 82,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade900,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.videocam, color: Colors.blue,),
                          Text("video",
                            style: TextStyle(color: Colors.blue,
                                fontSize: 16),),
                        ],
                      ),
                    ),
                    const SizedBox(width: 9,),
                    Container(
                      height: 59,
                      width: 82,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade900,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.mail, color: Colors.grey.shade800,),
                          Text("mail",
                            style: TextStyle(color: Colors.grey.shade800,
                                fontSize: 16),),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => const Call2()));
                  },
                  child: Container(
                    height: 61,
                    width:350,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(height: 3, ),
                          Text("mobile",
                            style: TextStyle(color: Colors.white,
                                fontSize: 19),),
                          Text("+234 811 841 0480",
                            style: TextStyle(color: Colors.blue,
                                fontSize: 19),),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 120,
                  width:350,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Notes",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                          ),),
                        TextField(
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                          ),
                          decoration: InputDecoration(
                              border: InputBorder.none
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 130,
                  width:350,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(10),
                    // border: Border(
                    //     top: BorderSide(
                    //         color: Colors.grey.shade800,
                    //         width: 0.5),
                    //     bottom: BorderSide(
                    //         color: Colors.grey.shade800,
                    //         width: 0.6)
                    // )
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Send Message",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18
                          ),),
                        Text("Share Contact",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18
                          ),),
                        Text("Add to Favourites",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18
                          ),),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 49,
                  width:350,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 6,),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text("Add to Emergency Contacts",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18
                          ),),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 49,
                  width:350,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 6,),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text("Share My Location",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18
                          ),),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    showModalBottomSheet(context: context, builder: (context) {

                      return Container(
                        height: 250,
                        decoration: const BoxDecoration(
                            color: Colors.black
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: Column(
                            children: [
                              Container(
                                height: 130,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade900,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 65,
                                      decoration: BoxDecoration(
                                          border: Border(bottom: BorderSide(
                                              color: Colors.grey.shade400,
                                              width: 1.0
                                          ))
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(13.0),
                                        child:blueColor ?  Text("Unblock this caller",
                                          style: TextStyle(
                                              color: Colors.grey.shade500,
                                              fontSize: 16
                                          ),)  :Text("You will not receive phone calls messages or  "
                                            "FaceTime from people on the block list.",
                                          style: TextStyle(
                                              color: Colors.grey.shade500,
                                              fontSize: 16
                                          ),),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          blueColor = ! blueColor;
                                        });
                                        Navigator.pop(context);
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child:blueColor?  const Text(
                                          "Unblock Contact",
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 25
                                          ),
                                        ) :
                                        const Text(
                                          "Block Contact",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 25
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10,),
                              GestureDetector(
                                onTap: (){
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: 65,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade900,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Cancel",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 25
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    });
                  },
                  child: Container(
                    height: 49,
                    width:350,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 6,),
                        Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: blueColor?  const Text("Unblock this Caller",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18
                              ),) :  const Text("Block this Caller",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 18
                              ),)
                        )],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
