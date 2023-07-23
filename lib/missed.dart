import 'package:flutter/material.dart';

class Missed extends StatefulWidget {
  const Missed({Key? key}) : super(key: key);

  @override
  State<Missed> createState() => _MissedState();
}

class _MissedState extends State<Missed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children:  [
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
              const SizedBox(height: 200,),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text("No missed calls",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.grey.shade800
                  ),),
              ),
            ],
          ),
        )
    );
  }
}
