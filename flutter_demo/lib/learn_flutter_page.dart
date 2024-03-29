import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn Flutter"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Add your onPressed code here!
              debugPrint("Search icon pressed");
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              // Add your onPressed code here!
              debugPrint("More icon pressed");
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("images/einstien.jpg"),
            SizedBox(height: 10),
            const Divider(color: Colors.black),
            Container(
              color: Colors.blue,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(20),
              child: const Center(
                child: const Text(
                  "Albert Einstein was a German-born theoretical physicist, widely acknowledged to be one of the greatest physicists of all time. Einstein is known for developing the theory of relativity, but he also made important contributions to the development of the theory of quantum mechanics.",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isSwitch ? Colors.red : Colors.green,
              ),
              onPressed: () {
                // Add your onPressed code here!
                debugPrint("ElevatedButton pressed");
              },
              child: const Text("Elevated button"),
            ),
            OutlinedButton(
              onPressed: () {
                // Add your onPressed code here!
                debugPrint("OutlinedButton pressed");
              },
              child: const Text("Outlined button"),
            ),
            TextButton(
              onPressed: () {
                // Add your onPressed code here!
                debugPrint("TextButton pressed");
              },
              child: const Text("Text button"),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                // Add your onTap code here!
                debugPrint("GestureDetector tapped");
              },
              child: Row(
                children: const [
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Text("my text"),
                  Icon(Icons.star),
                  Icon(Icons.star),
                ],
              ),
            ),
            Switch(
              value: isSwitch,
              onChanged: (bool value) {
                setState(() {
                  isSwitch = value;
                });
                // Add your onChanged code here!
                debugPrint("Switch changed");
              },
            ),
            Checkbox(
              value: isCheck,
              onChanged: (bool? value) {
                setState(() {
                  isCheck = !isCheck;
                });
              },
            ),
            Image.network("https://picsum.photos/250?image=9"),
          ],
        ),
      ),
    );
  }
}
