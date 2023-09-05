import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(List<String> args) {}

class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            height: 40.0,
          ),
          const CircleAvatar(
            backgroundImage: AssetImage('images/4.jpg'),
            radius: 90,
          ),
          const Text(
            'Shoueib_Rabei',
            style: TextStyle(
                fontSize: 30.0,
                fontFamily: AutofillHints.jobTitle,
                fontWeight: FontWeight.bold),
          ),
          MaterialButton(
            onPressed: () {},
            child: Text('shouiebalkhal@gmail.com'),
            textColor: Colors.blue,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Mobile Developer\t'), Icon(Icons.developer_mode)],
          ),
          const SizedBox(
            height: 35.0,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '1078\t',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              Text('followers')
            ],
          ),
          Container(
            color: Color.fromARGB(255, 2, 51, 90),
            width: 200.0,
            child: MaterialButton(
                textColor: Colors.white,
                onPressed: () {},
                child: const Text(
                  'Edit Profile',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            width: 300,
            child: const Text(
              'Flutter is an open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase. · Fast · Productive',
              style: TextStyle(
                  fontSize: 16, wordSpacing: 2, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            width: 200.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      print('facebook');
                    },
                    icon: const Icon(
                      Icons.facebook,
                      size: 35,
                      color: Color.fromARGB(255, 12, 100, 179),
                    )),
                IconButton(
                    onPressed: () {
                      print('facebook');
                    },
                    icon: const Icon(
                      FontAwesomeIcons.twitter,
                      size: 30,
                      color: Color.fromARGB(255, 12, 100, 179),
                    )),
                IconButton(
                    onPressed: () {
                      print('facebook');
                    },
                    icon: const Icon(
                      FontAwesomeIcons.instagram,
                      size: 30,
                      color: Color.fromARGB(255, 250, 81, 69),
                    )),
                IconButton(
                    onPressed: () {
                      print('facebook');
                    },
                    icon: const Icon(
                      FontAwesomeIcons.linkedin,
                      size: 30,
                      color: Color.fromARGB(255, 12, 100, 179),
                    ))
              ],
            ),
          ),
          Container(
            width: 250.0,
            height: 35.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 187, 186, 186)),
            child: const Center(
                child: Text(
              'Joined May.2022',
              style: TextStyle(fontSize: 20),
            )),
          )
        ],
      ),
    ));
  }
}
