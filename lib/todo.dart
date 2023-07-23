import 'package:flutter/material.dart';
import 'package:phone/phonec.dart';

import 'list.dart';

class ToDOItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;

   const ToDOItem({Key? key, required this.todo, required this.onToDoChanged, required this.onDeleteItem}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 3),
      width: 380,
      height: 63,
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide()
        )
      ),
      child: ListTile(
          onTap: (){
            Navigator.pushReplacement(
                context, MaterialPageRoute(
                builder: (context) =>  const PhoneContact(

                )
            )
            );
          },
          shape:  const RoundedRectangleBorder(
          ),
          contentPadding:  const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          tileColor: Colors.black,
          title:  Text(todo.todoText!,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),),

      )

    );
  }
}
