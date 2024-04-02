import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0x000ff333),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Good Morning',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 17,
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'Yujin Han',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Categories',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                      color: Colors.grey,
                    ),
                    height: 100,
                    width: 300,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Top Artists',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                      color: Colors.grey,
                    ),
                    height: 100,
                    width: 300,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Recommended For You',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                      color: Colors.grey,
                    ),
                    height: 100,
                    width: 300,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
