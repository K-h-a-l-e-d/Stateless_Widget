import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First Project", 
            style: TextStyle(
                fontFamily: 'RubikVinyl',
                fontSize: 30,
                color: Colors.deepPurple.shade700)),
        centerTitle: true,
        backgroundColor: Colors.blue.shade200,
      ),
      body: Center( //horizontal  alignment to the center
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Vertical Alignment to the center
          children: [
            Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //in order to maintain image sizes that fits relative to the target device's screen size
                //the desired spacing value + padding value should be subtracted from the images' width as follows
                //for a spacing of 10 px, a 10/2 px Spacing will be subtracted from each image width
                //in addition to subtracting a 5 px padding at the screen side of each image
                Image.network(
                  "https://picsum.photos/1600/896",
                  width: (MediaQuery.of(context).size.width / 2) - 10, // 10 = 5px Spacing + 5px Padding
                  height: MediaQuery.of(context).size.height / 4,
                ),
                Image.asset(
                  "assets/images/Flutter.png",
                  width: (MediaQuery.of(context).size.width / 2) - 10, // 10 = 5px Spacing + 5px Padding
                  height: MediaQuery.of(context).size.height / 4,
                ),
              ],
            ),
            Text(
              'The two images are displayed',
              style: TextStyle(
                fontFamily: 'Suwannaphum',
                fontSize: 21,
                color: Colors.deepPurple.shade900,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
