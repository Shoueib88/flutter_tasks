import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(List<String> args) {}

class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.black, //top bar color
      systemNavigationBarDividerColor: Colors.white,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Expanded(
          child: ListView(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/9.jpg'), fit: BoxFit.cover)),
            //color: Color.fromARGB(255, 5, 70, 123),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 10, right: 10),
                  margin: const EdgeInsets.only(top: 10, right: 10),
                  alignment: Alignment.topRight,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_active,
                        size: 30.0,
                        color: Colors.white,
                      )),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(108),
                      border: Border.all(
                          color: Color.fromARGB(255, 1, 38, 68),
                          width: 10.0,
                          style: BorderStyle.solid)),
                  child: const CircleAvatar(
                    radius: 90,
                    backgroundImage: AssetImage('images/2.jpg'),
                  ),
                ),
                const Text(
                  'Hi,Shoueib!',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Form(
                    child: Container(
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                  ),
                  child: TextFormField(
                      cursorColor: Colors.white,
                      scrollPhysics: BouncingScrollPhysics(),
                      decoration: InputDecoration(
                        prefixIcon: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.search)),
                        hintText: 'what do you need today',
                        focusColor: Colors.white,
                        suffixIcon: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.close)),
                      )),
                )),
                const SizedBox(
                  height: 15,
                )
              ],
            ),
          )
        ],
      )),
      Expanded(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 230,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 350,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            boxShadow: [BoxShadow(offset: Offset(0.4, 0.4))],
                            color: Color.fromARGB(255, 239, 245, 250),
                            borderRadius: BorderRadius.circular(20)),
                        width: 100,
                        height: 100,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              FontAwesomeIcons.stethoscope,
                              color: Color.fromARGB(255, 11, 95, 163),
                            ),
                            Text(
                              'Appointments',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 70, 125)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            boxShadow: [BoxShadow(offset: Offset(0.4, 0.4))],
                            color: Color.fromARGB(255, 239, 245, 250),
                            borderRadius: BorderRadius.circular(20)),
                        width: 100,
                        height: 100,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              FontAwesomeIcons.pills,
                              color: Color.fromARGB(255, 11, 95, 163),
                            ),
                            Text(
                              'Medicines',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 70, 125)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            boxShadow: [BoxShadow(offset: Offset(0.4, 0.4))],
                            color: Color.fromARGB(255, 239, 245, 250),
                            borderRadius: BorderRadius.circular(20)),
                        width: 100,
                        height: 100,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.leaderboard,
                              color: Color.fromARGB(255, 11, 95, 163),
                            ),
                            Text(
                              'Reports',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 70, 125)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 230.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            boxShadow: [BoxShadow(offset: Offset(0.4, 0.4))],
                            color: Color.fromARGB(255, 239, 245, 250),
                            borderRadius: BorderRadius.circular(20)),
                        width: 100,
                        height: 100,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.receipt,
                              color: Color.fromARGB(255, 11, 95, 163),
                            ),
                            Text(
                              'Billings',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 70, 125)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            boxShadow: [BoxShadow(offset: Offset(0.4, 0.4))],
                            color: Color.fromARGB(255, 239, 245, 250),
                            borderRadius: BorderRadius.circular(20)),
                        width: 100,
                        height: 100,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.forum,
                              color: Color.fromARGB(255, 11, 95, 163),
                            ),
                            Text(
                              'Messages',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 70, 125)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 230,
            height: 50,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/9.jpg'), fit: BoxFit.cover)),
            //color: Color.fromARGB(255, 4, 98, 176),
            child: TextButton(
                onPressed: () {},
                child: const Text('LOGOUT',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20))),
          ),
        ],
      ))
    ]));
  }
}
