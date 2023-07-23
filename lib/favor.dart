import 'package:flutter/material.dart';

import '../contact_list.dart';

class Favor extends StatefulWidget {
  const Favor({Key? key}) : super(key: key);

  @override
  State<Favor> createState() => _FavorState();
}

class _FavorState extends State<Favor> {
  List<Contacts> myContacts = List.empty(growable: true);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          bottom: PreferredSize(
              preferredSize: Size.zero,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: (){},
                    icon: const Icon(Icons.add,
                    size: 30,color: Colors.blue,),

                      )
                ],
              ))
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            children:  [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("Favourites",
                  style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),
              ),
              const SizedBox(height: 290,),
              myContacts.isEmpty ?
               Padding(
                 padding: const EdgeInsets.only(left: 125),
                 child: Text("No Favourites",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.grey.shade800
                  ),),
               ) :
              Expanded(
                child: ListView.builder(
                    padding: const EdgeInsets.all(8.0),
                    itemCount: myContacts.length,
                    itemBuilder: (context, index){
                      return getRow(index);
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget getRow(int index) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40,
      decoration:  BoxDecoration(
          color: Colors.transparent,
          border: Border(
              top:BorderSide(color: Colors.grey.shade800,
                  width: 0.3),
              bottom: BorderSide( color: Colors.grey.shade800,
                  width: 0.2)
          )
      ),
      child: ListTile(
        shape: Border(
            bottom: BorderSide( color: Colors.grey.shade800,
                width: 0.3)
        ),
        title:
        Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Text(myContacts[index].firstName as String,
            style: const TextStyle(color: Colors.white,
                fontSize: 22),),
        ),
      ),
    );
  }
}
