import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Task3 extends StatefulWidget {
  const Task3({super.key});

  @override
  State<Task3> createState() => _Task3State();
}

class _Task3State extends State<Task3> {
  CarouselController ps = CarouselController();
  int currentIndex = 0;
  int ls = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              ls = value;
            });
          },
          type: BottomNavigationBarType.shifting,
          selectedItemColor: const Color.fromARGB(255, 137, 41, 154),
          unselectedItemColor: Colors.white,
          currentIndex: ls,
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.home_outlined),
                label: "الرئيسية"),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.file_copy_rounded),
                label: "report"),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.message_sharp),
                label: "message"),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.settings_outlined),
                label: "settinge"),
          ],
        ),
        appBar: AppBar(
          title: const Text('Home', style: TextStyle(fontSize: 30)),
          backgroundColor: Colors.purple,
        ),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/6.jpg'), fit: BoxFit.fill)),
            child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                      // const SizedBox(height: 10),
                      Container(
                        height: 300,
                        child: CarouselSlider.builder(
                          carouselController: ps,
                          itemCount: images.length,
                          itemBuilder: (BuildContext cont, int index, int) {
                            return CustomCard(image: images[index]);
                          },
                          options: CarouselOptions(
                              onPageChanged: (index, r) {
                                setState(() {
                                  currentIndex = index;
                                });
                                print(index);
                              },
                              enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                              autoPlayCurve: Curves.easeIn,
                              autoPlay: true,
                              enableInfiniteScroll: true,
                              height: 280,
                              aspectRatio: 0.9,
                              viewportFraction: 0.6),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                          width: 350,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('New releases', style: ticket.des),
                              Text('See More', style: ticket.des),
                            ],
                          )),
                      const SizedBox(height: 20),
                      pages(),
                      //const SizedBox(height: 10),
                    ])))));
  }
}

List images = [
  'https://i.ytimg.com/vi/1IxLldidcmA/maxresdefault.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHBmxDx1fpqWEdh9brK7VyYT1YdHUItk9tQ-I0Z8lryfkz8hJEFL9kwGqhhoTLd4wAYT4&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQeOhKJN3Szf1OIlEFCdKy9fcKuBJf8-JL0A&usqp=CAU',
  'https://m.media-amazon.com/images/M/MV5BZjI3YzZmN2YtYmNlNC00N2RjLWE5ZjYtMmY1NGRjZDc2NTliXkEyXkFqcGdeQXVyMTEyNDk0MjM@._V1_.jpg',
];

class CustomCard extends StatelessWidget {
  final image;

  const CustomCard({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(

          //color: Colors.blue,
          child: Stack(
        children: [
          Image.network(
            image.toString(),
            fit: BoxFit.fill,
          ),
          Positioned(child: ticket.poster(), top: 0.0, right: 0.0),
          Positioned(child: ticket.text(), bottom: 30.0, left: 10.0)
        ],
      )),
    );
  }
}

class ticket {
  static poster() {
    return Container(
      alignment: Alignment.center,
      height: 30,
      width: 100,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 137, 41, 154),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
          border: Border.all(
              color: const Color.fromARGB(255, 99, 22, 113), width: 3)),
      child: Text(
        'For All',
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }

  static text() {
    return Container(child: Text('Talk To Me', style: ticket.des));
  }

  static TextStyle des =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white);
}

class pages extends StatefulWidget {
  const pages({super.key});

  @override
  State<pages> createState() => _pagesState();
}

class _pagesState extends State<pages> {
  PageController pc = PageController(viewportFraction: 0.5);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 280,
        child: PageView.builder(
          controller: pc,
          itemCount: images.length,
          physics: BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      border: Border.symmetric(
                          vertical: BorderSide(color: Colors.white, width: 2),
                          horizontal:
                              BorderSide(color: Colors.white, width: 2))),
                  margin: const EdgeInsets.all(10),

                  //color: Colors.blue,
                  child: Image.network(
                    images[index],
                    fit: BoxFit.fill,
                    width: 140,
                    height: 300,
                  )),
            );
          },
        ));
  }
}
