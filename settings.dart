import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextButton(onPressed: () {}, child:const Text('Personal Info',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ), 
              )),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextButton(onPressed: () {}, child:const Text('System Info',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ), 
              )),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextButton(onPressed: () {}, child:const Text('About us',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ), 
              )),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextButton(onPressed: () {}, child:const Text('Licenses',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ), 
              )),
            ],
          ),
        ],
      ),
    ));
  }
}
