import 'package:catfish/trendset.dart';
import 'package:flutter/material.dart';
import 'package:catfish/column_row.dart';

class artOfWar extends StatefulWidget {
  static const id = 'artOfWar';
  const artOfWar({super.key});

  @override
  State<artOfWar> createState() => _artOfWarState();
}

class _artOfWarState extends State<artOfWar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("The Art of War"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/mufasa.jpg",
                width: 400.0, height: 400.0),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Padding(
                padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Aaron Pierre",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 20.0, // Set size for the icon
                          color: Colors.blue, // Set color for the icon
                        ),
                        Text("Daleware, U.S")
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Padding(
                padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                child: Column(
                  children: [
                    Text(
                      "I love reading, running, taliking, etc ",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Padding(
                padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                child: Column(
                  children: [
                    Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, "),
                  ],
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 40),
                    backgroundColor: (Colors.blue),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                  iconAlignment: IconAlignment.end,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Trendset()),
                    );
                  },
                  child: const Text('Contact Me')),
            ),
          ],
        ),
      ),
    );
  }
}
