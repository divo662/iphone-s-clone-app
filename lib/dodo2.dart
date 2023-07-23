import 'package:flutter/material.dart';

import 'dodo.dart';
import 'list.dart';

class DoDOItem extends StatelessWidget {

  final DoDo doDo;
  final onDoDoChanged;
  final onDeleteItem;

  const DoDOItem({Key? key, required this.doDo, required this.onDoDoChanged,
    required this.onDeleteItem,  }) : super(key: key);



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
            onDoDoChanged(doDo);
          },
          shape:  RoundedRectangleBorder(
          ),
          contentPadding:  const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          tileColor: Colors.black,
          title:  Text(doDo.dodoText!,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),),
        )

    );
  }
}
