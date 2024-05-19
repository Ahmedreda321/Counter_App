import 'package:flutter/material.dart';

void main() {
  runApp(const Counter_App());
}

// ignore: must_be_immutable, camel_case_types
class Counter_App extends StatefulWidget {
  const Counter_App({super.key});
  @override
  State<Counter_App> createState() => _Counter_AppState();
}

// ignore: camel_case_types
class _Counter_AppState extends State<Counter_App> {
  // ignore: non_constant_identifier_names
  int New_York_Knicks = 0;
  // ignore: non_constant_identifier_names
  int Golden_State_Warriors = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xffC8142E),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/image/logo_preview.png',
                height: 100,
                width: 100,
              ),
              const SizedBox(
                width: 3,
              ),
              const Text(
                'Points Counter',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.w700,
                  fontSize: 27,
                ),
              ),
            ],
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage(
                "assets/image/nba.png",
              ),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(.57), BlendMode.dstATop),
            ),
          ),
          child: Column(children: [
            const SizedBox(
              height: 75,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color(0xffFAFBFA),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(.15, .15),
                      blurRadius: 4),
                ],
                borderRadius: BorderRadius.all(Radius.circular(60)),
              ),
              height: 190,
              width: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'New York \n   Knicks',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                      Image.asset(
                        'assets/image/New_York_Knicks_logo.svg.png',
                        width: 100,
                        height: 100,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 150,
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Score',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w400),
                        ),
                        const Text(
                          'Live',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '$New_York_Knicks:$Golden_State_Warriors',
                          style: const TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Golden State \n    Warriors',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                      Image.asset(
                        'assets/image/Golden_State_Warriors_logo.svg.png',
                        width: 100,
                        height: 100,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      highlightColor: const Color.fromARGB(255, 186, 94, 94),
                      icon: Image.asset(
                        'assets/image/basketball_icon.png',
                        height: 60,
                        width: 60,
                      ),
                      iconSize: 0.2,
                      onPressed: () {
                        setState(() {
                          if (New_York_Knicks <= 98) {
                            New_York_Knicks++;
                          }
                        });
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    IconButton(
                      highlightColor: const Color.fromARGB(255, 186, 94, 94),
                      icon: Row(
                        children: [
                          Image.asset(
                            'assets/image/basketball_icon.png',
                            height: 60,
                            width: 60,
                          ),
                          Image.asset(
                            'assets/image/basketball_icon.png',
                            height: 60,
                            width: 60,
                          ),
                        ],
                      ),
                      iconSize: 0.2,
                      onPressed: () {
                        setState(() {
                          if (New_York_Knicks < 97) {
                            New_York_Knicks += 2;
                          }
                        });
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    IconButton(
                      highlightColor: const Color.fromARGB(255, 186, 94, 94),
                      icon: Row(
                        children: [
                          Image.asset(
                            'assets/image/basketball_icon.png',
                            height: 60,
                            width: 60,
                          ),
                          Image.asset(
                            'assets/image/basketball_icon.png',
                            height: 60,
                            width: 60,
                          ),
                          Image.asset(
                            'assets/image/basketball_icon.png',
                            height: 60,
                            width: 60,
                          ),
                        ],
                      ),
                      iconSize: 0.2,
                      onPressed: () {
                        setState(() {
                          if (New_York_Knicks < 95) {
                            New_York_Knicks += 3;
                          }
                        });
                      },
                    ),
                  ],
                ),
                Container(
                  height: 300,
                  width: 1.5,
                  color: Colors.black,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      highlightColor: const Color.fromARGB(255, 186, 94, 94),
                      icon: Image.asset(
                        'assets/image/basketball_icon.png',
                        height: 60,
                        width: 60,
                      ),
                      iconSize: 0.2,
                      onPressed: () {
                        setState(() {
                          if (Golden_State_Warriors <= 98) {
                            Golden_State_Warriors++;
                          }
                        });
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    IconButton(
                      highlightColor: const Color.fromARGB(255, 186, 94, 94),
                      icon: Row(
                        children: [
                          Image.asset(
                            'assets/image/basketball_icon.png',
                            height: 60,
                            width: 60,
                          ),
                          Image.asset(
                            'assets/image/basketball_icon.png',
                            height: 60,
                            width: 60,
                          ),
                        ],
                      ),
                      iconSize: 0.2,
                      onPressed: () {
                        setState(() {
                          if (Golden_State_Warriors <= 97) {
                            Golden_State_Warriors += 2;
                          }
                        });
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    IconButton(
                      highlightColor: const Color.fromARGB(255, 186, 94, 94),
                      icon: Row(
                        children: [
                          Image.asset(
                            'assets/image/basketball_icon.png',
                            height: 60,
                            width: 60,
                          ),
                          Image.asset(
                            'assets/image/basketball_icon.png',
                            height: 60,
                            width: 60,
                          ),
                          Image.asset(
                            'assets/image/basketball_icon.png',
                            height: 60,
                            width: 60,
                          ),
                        ],
                      ),
                      iconSize: 0.2,
                      onPressed: () {
                        setState(() {
                          if (Golden_State_Warriors < 96) {
                            Golden_State_Warriors += 3;
                          }
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffFF7042)),
              onPressed: () {
                setState(() {
                  Golden_State_Warriors = 0;
                  New_York_Knicks = 0;
                });
              },
              child: const Text(
                'Reset',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
            ),

            //if you need to make icon button you can use that
            // IconButton(
            //   highlightColor: const Color.fromARGB(255, 186, 94, 94),
            //   icon: Image.asset(
            //     'assets/image/reset.png',
            //     height: 100,
            //     width: 100,
            //   ),
            //   iconSize: 0.2,
            //   onPressed: () {
            //     setState(() {
            //       Golden_State_Warriors = 0;
            //       New_York_Knicks = 0;
            //     });
            //   },
            // ),
          ]),
        ),
      ),
    );
  }
}
