import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageApp(),
    );
  }
}

class HomePageApp extends StatefulWidget {
  const HomePageApp({super.key});

  @override
  State<HomePageApp> createState() => _HomePageAppState();
}

class _HomePageAppState extends State<HomePageApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              const SizedBox(
                height: 350.0,
                width: double.infinity,
              ),
              Container(
                height: 250.0,
                width: double.infinity,
                color: const Color(0xFFFA624F),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                ),
              ),
              Positioned(
                top: 125.0,
                left: 15.0,
                right: 15.0,
                child: Material(
                  elevation: 3.0,
                  borderRadius: BorderRadius.circular(7.0),
                  child: Container(
                    height: 200.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0),
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 75.0,
                left: (MediaQuery.of(context).size.width / 2 - 50.0),
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    image: const DecorationImage(
                      image: AssetImage("images/picture1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 190.0,
                left: (MediaQuery.of(context).size.width / 2) - 90.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Teja Reddy",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                      ),
                    ),
                    const SizedBox(height: 7.0),
                    const Text(
                      "India",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFFA624F),
                          ),
                          child: const Text("Message"),
                        ),
                        const SizedBox(width: 7.0),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey,
                          ),
                          child: const Text("Following"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Menu",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                ),
                Text(
                  "see all",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 15.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Column(
            children: [
              menuCard("Berry Banana Milshake", "images/bananaberry.jpeg",
                  "Breakfast", 3, 2.8, 1.2),
              SizedBox(height: 7.0),
              menuCard("Fruit Pancake", "images/fruitpancake.jpeg", "Breakfast",
                  4, 4.2, 2.8),
            ],
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Works",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                Text(
                  "see all",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15.0),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Container(
              height: 125.0,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  getImg("images/fruitpancake.jpeg"),
                  getImg("images/dumplings.jpeg"),
                  getImg("images/noodles.jpeg"),
                ],
              ),
            ),
          ),
          SizedBox(height: 18.0),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Bought",
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "see all",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 15.0
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25.0)
        ],
      ),
    );
  }

  Widget getImg(String imgPath) {
    return Padding(
      padding: EdgeInsets.only(right: 15.0),
      child: Container(
        height: 100.0,
        width: 125.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          image: DecorationImage(image: AssetImage(imgPath), fit: BoxFit.cover),
        ),
      ),
    );
  }

  Widget menuCard(String title, String imgPath, String type, int rating,
      double views, double likes) {
    // ignore: prefer_const_constructors
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: Material(
        borderRadius: BorderRadius.circular(7.0),
        elevation: 4.0,
        child: Container(
          height: 125.0,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0), color: Colors.white),
          child: Row(
            children: [
              const SizedBox(width: 10.0),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imgPath), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(7.0),
                ),
              ),
              SizedBox(width: 35.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15.0),
                  Text(
                    title,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  SizedBox(height: 7.0),
                  Text(
                    type,
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(height: 7.0),
                  Row(
                    children: [
                      getStar(rating, 1),
                      getStar(rating, 2),
                      getStar(rating, 3),
                      getStar(rating, 4),
                      getStar(rating, 5),
                    ],
                  ),
                  SizedBox(height: 7.0),
                  Row(
                    children: [
                      Icon(Icons.remove_red_eye, color: Colors.grey),
                      SizedBox(width: 3.0),
                      Text(views.toString()),
                      SizedBox(width: 10.0),
                      Icon(Icons.favorite, color: Colors.red),
                      SizedBox(width: 3.0),
                      Text(likes.toString())
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getStar(rating, index) {
    if (rating >= index) {
      return const Icon(Icons.star, color: Colors.amber);
    } else {
      return const Icon(Icons.star, color: Colors.grey);
    }
  }
}
