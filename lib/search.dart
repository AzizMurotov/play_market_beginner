import 'package:flutter/material.dart';
import 'package:play_market/home_page.dart';

class SearchPage extends StatefulWidget {
  static const String id = "search_page";

  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, HomePage.id);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: const Text(
          "ilova va o'yinlarni qidirish",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {
                print("mikrafonni bosdingiz");
              },
              icon: Icon(
                Icons.mic_none,
                color: Colors.black,
              ))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  print("text button bosildi");
                },
                child: const Text(
                  "text button",
                  style: TextStyle(
                      color: Colors.white,
                      backgroundColor: Colors.black,
                      fontSize: 20),
                )),
            //SizedBox(height:10,),
            OutlinedButton(
              onPressed: () {
                print("outline buttonni bosdingiz");
              },
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(width: 1, color: Colors.black)),
              child: const Text(
                "outline button",
                style: TextStyle(color: Colors.green, fontSize: 20),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print("elevation button bosildi");
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white)),
              child: const Text(
                "elevation button",
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
