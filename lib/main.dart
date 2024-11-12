import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            children: [
              Flexible(
                  child: Align(
                alignment: Alignment.bottomLeft,
                child: Text("My App"),
              ))
            ],
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          ],
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16))),
          backgroundColor: const Color.fromARGB(255, 228, 188, 8),
          toolbarHeight: 70,
        ),
        body: const Center(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    // For Icecream icon

                    SizedBox(
                      height: 16,
                    ),
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 232, 221, 221),
                      radius: 64,
                      child: Icon(
                        Icons.icecream_outlined,
                        size: 60.0,
                      ),
                    ),
                    Text(
                      "Ice cream is a very delicious right?",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),

                    // For navigate icon

                    SizedBox(
                      height: 32,
                    ),
                    CircleAvatar(
                      radius: 64,
                      backgroundColor: Color.fromARGB(255, 232, 221, 221),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.navigate_before,
                                size: 60.0,
                              ),
                              Icon(
                                Icons.navigate_next,
                                size: 60.0,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Programing is not boring if you love it",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),

                    SizedBox(
                      height: 32,
                    ),
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 232, 221, 221),
                      radius: 64,
                      child: Icon(
                        Icons.water_drop_outlined,
                        size: 60.0,
                      ),
                    ),
                    Text(
                      "If you submit code directly copy from chatgpt then mark will 0",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
