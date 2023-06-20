import 'package:flutter/material.dart';
import 'package:play_market/game_page.dart';
import 'package:play_market/search.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, SearchPage.id);
            },
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            )),
        title: const Text(
          "play market",
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Icon(
            Icons.mic,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.notifications, color: Colors.black),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/image1.jpg"),
            const SizedBox(height: 10),
            Image.asset("assets/images/image2.jpg"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
        onPressed: () {},
        child: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, GamePage.id);
            },
            icon: Icon(Icons.games)),
      ),
    );
  }
}
