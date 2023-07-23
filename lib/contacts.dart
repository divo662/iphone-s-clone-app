import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phone/phone2.dart';



import 'contact_list.dart';
import 'dodo.dart';
import 'dodo2.dart';
import 'list.dart';
import 'todo.dart';


class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final todoList = ToDo.todoList();
  final dodoList = DoDo.dodoList();
  List<ToDo> _foundToDO = [];
  List<DoDo> _foundDoDO = [];

  // TEXT EDITING CONTROLLERS FOR THE TEXT FIELD
  TextEditingController firstNameEditor = TextEditingController();
  TextEditingController lastNameEditor = TextEditingController();
  TextEditingController phoneEditor = TextEditingController();
  TextEditingController searchEditor = TextEditingController();

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
    _foundToDO = todoList;
    _foundDoDO = dodoList;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    firstNameEditor = TextEditingController();
  }

  Color primaryColors = Colors.grey.shade800;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // TEXT BUTTON FOR GROUPS................................
                TextButton(
                    onPressed: () {},
                    child: const Text("Groups",
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold
                      ),)),
                // ICON BUTTON FOR ADDING CONTACTS.........................
                IconButton(
                    onPressed: () {
                      // SHOW BOTTOM MODAL SHEET.............................
                      showBottomSheet(context: context,
                          backgroundColor: Colors.grey.shade900,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  topLeft: Radius.circular(20)
                              )
                          ),
                          builder: (context) {
                            // CONTAINER FOR THE MODAL BOTTOM SHEET.................
                            return SizedBox(
                              height: 750,
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
                                          TextButton(onPressed: () {
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
                                                    color: Colors.white,
                                                    fontWeight:
                                                    FontWeight.bold)
                                            ),
                                          ),
                                          // DONE TEXT BUTTON...................
                                          TextButton(
                                              onPressed: () {
                                                String firstName =
                                                firstNameEditor.text.trim();
                                                String lastName =
                                                lastNameEditor.text.trim();
                                                String phone = phoneEditor.text
                                                    .trim();
                                                if (firstName.isNotEmpty
                                                    && lastName.isNotEmpty
                                                    && phone.isNotEmpty) {
                                                  setState(() {
                                                    myContacts.add(
                                                        Contacts(firstName:
                                                        firstNameEditor.text,
                                                          lastName: lastNameEditor
                                                              .text,
                                                          phoneNumber: phoneEditor
                                                              .text,
                                                        ));
                                                  });
                                                }

                                                Navigator.pop(context);
                                              },
                                              style: TextButton.styleFrom(
                                                  foregroundColor: primaryColors
                                              ),
                                              child: const Text("Done",
                                                style: TextStyle(
                                                  fontSize: 19,
                                                  color: Colors.blue,
                                                  fontWeight: FontWeight.bold,
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
                                    TextButton(onPressed: () {},
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
                                        padding: const EdgeInsets.only(
                                            left: 10),
                                        child: Column(
                                          children: [
                                            // FIRST NAME TEXT FIELD..............
                                            TextField(
                                              style:  TextStyle(
                                                fontSize: 19,
                                                color: Colors.grey.shade400
                                              ),
                                              keyboardType: TextInputType.name,
                                              controller: firstNameEditor,
                                              onChanged: (value) {
                                                setState(() {
                                                  if (value.isNotEmpty) {
                                                    primaryColors =
                                                        Colors.blue.shade800;
                                                  } else {
                                                    primaryColors =
                                                        Colors.grey.shade800;
                                                  }
                                                });
                                              },
                                              textInputAction: TextInputAction
                                                  .next,
                                              decoration: InputDecoration(
                                                hintText: "First name",
                                                hintStyle: TextStyle(
                                                  fontSize: 19,
                                                  color: Colors.grey.shade400
                                                ),
                                                contentPadding: EdgeInsets.zero,
                                              ),
                                            ),
                                            // LAST NAME TEXT FIELD..................
                                            TextField(
                                              style:  TextStyle(
                                                fontSize: 19,
                                                color: Colors.grey.shade400
                                              ),
                                              controller: lastNameEditor,
                                              keyboardType: TextInputType.name,
                                              textInputAction: TextInputAction
                                                  .next,
                                              decoration: InputDecoration(
                                                hintText: "Last name",
                                                hintStyle: TextStyle(
                                                  fontSize: 19,
                                                    color: Colors.grey.shade400
                                                ),
                                                contentPadding: EdgeInsets.zero,
                                              ),
                                            ),
                                            // COMPANY TEXT FIELD....................
                                             TextField(
                                              style: TextStyle(
                                                color: Colors.grey.shade400,
                                                fontSize: 19,
                                              ),
                                              keyboardType: TextInputType.name,
                                              textInputAction: TextInputAction
                                                  .done,
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: "Company",
                                                hintStyle: TextStyle(
                                                  fontSize: 19,
                                                    color: Colors.grey.shade400
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
                                      child: TextField(
                                        style: TextStyle(
                                          fontSize: 19,
                                            color: Colors.grey.shade400
                                        ),
                                        controller: phoneEditor,
                                        keyboardType: TextInputType.phone,
                                        textInputAction: TextInputAction.next,
                                        decoration: InputDecoration(
                                          prefixIcon: const Icon(
                                            Icons.add_circle,
                                            color: Colors.green, size: 30,),
                                          suffixIcon: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.delete_rounded,
                                                color: Colors.red,
                                                size: 20,)
                                          ),
                                          hintText: "add phone",
                                          hintStyle: const TextStyle(
                                              fontSize: 19,
                                              color: Colors.white
                                          ),
                                        ),
                                      ),
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
                                        keyboardType: TextInputType
                                            .emailAddress,
                                        textInputAction: TextInputAction.next,
                                        decoration: InputDecoration(
                                          prefixIcon: const Icon(
                                            Icons.add_circle,
                                            color: Colors.green, size: 30,),
                                          suffixIcon: IconButton(
                                              onPressed: () {},
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
                            );
                          });
                    },
                    icon: const Icon(
                      Icons.add,
                      color: Colors.blue,
                      size: 30,))
              ],
            ),
          ),
        ),
        // BODY OF MY CONTACT PAGE........................
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: SizedBox(
                height: MediaQuery
                    .of(context)
                    .size
                    .height,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 200),
                      child: Text("Contacts",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),),
                    ),
                    const SizedBox(height: 11,),
                    GestureDetector(
                      onTap: () {
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
                      child: Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        height: 37,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(width: 5,),
                            Icon(CupertinoIcons.search,
                                size: 20,
                                color: Colors.grey.shade500),
                            const SizedBox(width: 5,),
                            Text("Search",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey.shade500
                              ),)
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 16,),
                    // ROW FOR MY CARD.....................
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border(
                              top: BorderSide(color: Colors.grey.shade800,
                                  width: 1),
                              bottom: BorderSide(color: Colors.grey.shade800,
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
                                  backgroundColor: Colors.grey.shade400,
                                  child: const Icon(Icons.person, size: 56,),
                                ),
                                // MY CARD CODE................
                                const SizedBox(width: 13,),
                                Column(
                                  children: [
                                    const Text("Divine Nzeh", style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                        color: Colors.white
                                    ),),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 60),
                                      child: Text("My Card", style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.grey.shade600
                                      ),),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 30),
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
                    for(ToDo todoo in _foundToDO.reversed)
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border(
                                top: BorderSide(color: Colors.grey.shade800,
                                    width: 0.6),
                                bottom: BorderSide(color: Colors.grey.shade800,
                                    width: 0.6)
                            )
                        ),
                        child: ToDOItem(
                          todo: todoo,
                          onToDoChanged: _handleToDOChange,
                          onDeleteItem: _deleteToDoItem,
                        ),
                      ),
                    //LIST VIEW CODE.................
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ListView.builder(
                            itemCount: myContacts.length,
                            itemBuilder: (context, index) {
                              return getRow(index);
                            }),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("7 Contacts",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey.shade400
                          ),)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }

  void _handleToDOChange(ToDo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void _handleDoDOChange(DoDo dodo){
    setState(() {
      dodo.isBone = ! dodo.isBone;
    });
  }

  void _deleteToDoItem(String id) {
    setState(() {
      todoList.removeWhere((item) => item.id == id);
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

// GET ROW LOST GENERATOR.......................
  Widget getRow(int index) {
    return GestureDetector(
      onTap: (){
        Navigator.pushReplacement(
            context, MaterialPageRoute
          (builder: (context) => const Phone2()));
      },
      child: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border(

                bottom: BorderSide(color: Colors.grey.shade800,
                    width: 0.2)
            )
        ),
        child: ListTile(
          shape: Border(
              bottom: BorderSide(color: Colors.grey.shade800,
                  width: 0.3)
          ),
          title:
          Padding(
            padding: const EdgeInsets.only(bottom: 9),
            child: Text(myContacts[index].firstName as String,
              style: const TextStyle(color: Colors.white,
                  fontSize: 22),),
          ),
        ),
      ),
    );
  }
}
