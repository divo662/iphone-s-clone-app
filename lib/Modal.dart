import 'package:flutter/material.dart';

import '../contact_list.dart';
import 'contacts.dart';
import 'number_page.dart';

class ModalPage extends StatefulWidget {
  const ModalPage({Key? key}) : super(key: key);

  @override
  State<ModalPage> createState() => _ModalPageState();
}

class _ModalPageState extends State<ModalPage> {
  // TEXT EDITING CONTROLLERS FOR THE TEXT FIELD
  TextEditingController firstNameEditor = TextEditingController();
  TextEditingController lastNameEditor = TextEditingController();
  TextEditingController phoneEditor = TextEditingController();
  // BOOL VALUE FOR BUTTON CHANGE OF COLOR
  bool isValid = true;

  // CONTACT GENERATING LIST CALL FUNCTION
  List<Contacts> myContacts = List.empty(growable: true);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    firstNameEditor = TextEditingController();
    lastNameEditor = TextEditingController();

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    firstNameEditor = TextEditingController();
  }

  Color primaryColors = Colors.grey.shade800;
  List<NumberPage> number = [
    NumberPage(
        "Da"
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: BottomSheet(
          onClosing: () { },

          builder: (BuildContext context) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.shade900
            ),
            height: 950,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        // CANCEL TEXT BUTTON.................
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        },
                            child: const Text("Cancel",
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold
                              ),)),
                        const Padding(
                          padding:
                          EdgeInsets.symmetric(
                              vertical: 15
                          ),
                          child: Text("New Contact",
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight:
                                  FontWeight.bold)
                          ),
                        ),
                        // DONE TEXT BUTTON...................
                        TextButton(
                            onPressed:  (){
                             Navigator.pop(context);
                            },

                            child:  const Text("Done",
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue
                              ),)),
                      ],
                    ),
                  ),
                  // CIRCLE AVATAR................
                  CircleAvatar(
                    radius: 120,
                    backgroundColor: Colors.grey.shade600,
                    child: Icon(
                      Icons.person_rounded, size: 180,
                      color: Colors.grey.shade200,),
                  ),
                  // ADD PHOTO BUTTON..............
                  TextButton(onPressed: (){},
                      child: const Text("Add Photo",
                        style: TextStyle(
                          fontSize: 19,
                        ),)
                  ),
                  const SizedBox(height: 20,),
                  // CONTAINER FOR THE FIRST 3 TEXT FIELD..........
                  Container(
                    height: 148,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        border: Border.all(
                            color: Colors.grey.shade600)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          // FIRST NAME TEXT FIELD..............
                          TextField(
                            style:  TextStyle(
                              fontSize: 19,
                              color: Colors.grey.shade500
                            ),
                            keyboardType: TextInputType.name,
                            controller: firstNameEditor,
                            onChanged: (value){
                              setState(() {
                                if (value.isNotEmpty) {
                                  primaryColors = Colors.blue.shade800;
                                } else {
                                  primaryColors = Colors.grey.shade800;
                                }
                              });
                            },
                            textInputAction: TextInputAction.next,
                            decoration:  InputDecoration(
                              hintText: "First name",
                              hintStyle: TextStyle(
                                fontSize: 19,
                                  color: Colors.grey.shade500
                              ),
                              contentPadding: EdgeInsets.zero,
                            ),
                          ),
                          // LAST NAME TEXT FIELD..................
                          TextField(
                            style:  TextStyle(
                              fontSize: 19,
                                color: Colors.grey.shade500
                            ),
                            controller: lastNameEditor,
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            decoration:  InputDecoration(
                              hintText: "Last name",
                              hintStyle: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 19,
                              ),
                              contentPadding: EdgeInsets.zero,
                            ),
                          ),
                          // COMPANY TEXT FIELD....................
                          TextField(
                            style: TextStyle(
                              fontSize: 19,
                                color: Colors.grey.shade500
                            ),
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Company",
                              hintStyle: TextStyle(
                                fontSize: 19,
                                  color: Colors.grey.shade500
                              ),
                              contentPadding: EdgeInsets.zero,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 40,),
                  // PHONE NUMBER TEXT FIELD......................
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        border: Border.all(
                            color: Colors.grey.shade600,
                            style: BorderStyle.solid)
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 5,),
                        const Icon(Icons.delete_rounded,
                        size: 20,
                            color: Colors.red,),
                        const SizedBox(width: 5,),
                        const Text("mobile",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20
                        ),),
                        const SizedBox(width: 5,),
                        Icon(Icons.arrow_forward_ios,
                          size: 20,
                          color: Colors.grey.shade600,),
                        const SizedBox(width: 10,),
                        const Text("08167714263",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20
                          ),)
                      ],
                    )
                  ),
                  const SizedBox(height: 40,),
                  // EMAIL TEXT FIELD....................
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        border: Border.all(
                            color: Colors.grey.shade600
                        )
                    ),
                    child: TextField(
                      style: const TextStyle(
                        fontSize: 19,
                      ),
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration:  InputDecoration(
                        prefixIcon: const Icon(
                          Icons.add_circle,
                          color: Colors.green,size: 30,),
                        suffixIcon: IconButton(onPressed: (){},
                            icon: const Icon(
                              Icons.delete_rounded,
                              color: Colors.red,
                              size: 20,)),
                        hintText: "add email",
                        hintStyle: const TextStyle(
                            fontSize: 19,
                            color: Colors.white
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );},

        ),
      ),
    );
  }
}
