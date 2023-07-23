import 'package:flutter/material.dart';

class Voicemail extends StatefulWidget {
  const Voicemail({Key? key}) : super(key: key);

  @override
  State<Voicemail> createState() => _VoicemailState();
}

class _VoicemailState extends State<Voicemail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:  SafeArea(
        child: SingleChildScrollView(
            child: Column(
                children:  [
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text("VoiceMail",
                      style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 290,),
                  Padding(
                    padding: const EdgeInsets.only(left: 138),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(color: Colors.white)
                      ),
                      child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black
                          ),
                          child: const Text(
                            "Call Voicemail"
                          )),
                    ),
                  )
                ]
            )
        ),
      )
    );
  }
}
