import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Test",
    home: MyApp2(),
  ));
}

class MyApp extends StatelessWidget {
  List<String> items = [
    "Populars",
    "Modern",
    "Beach",
    "Mountain",
  ];
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Second Screen'),
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(15, 30, 15, 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipOval(
                      child: Image.network(
                        "https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt5e3ae2352efa0335/63b296aa5e1b6b5239ba352c/cristiano-ronaldo-al-nassr-saudi-1200.jpg?auto=webp&format=pjpg&width=828&quality=60",
                        height: 35,
                        width: 35,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hallo There!",
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          "Muhammad Fikri",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Spacer(),
                    const Spacer(),
                    const Spacer(),
                    const Spacer(),
                    const Spacer(),
                    const Spacer(),
                    const Spacer(),
                    Icon(
                      Icons.email,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(width: 0.8),
                    ),
                    hintText: "Explore Something Fun",
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30.0,
                    ),
                    suffixIcon: Icon(Icons.clear),
                  ),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 300,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Image.network(
                            "https://a.cdn-hotels.com/gdcs/production143/d1112/c4fedab1-4041-4db5-9245-97439472cf2c.jpg",
                            height: 300,
                            width: 300,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 300,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Image.network(
                            'https://a.cdn-hotels.com/gdcs/production143/d1112/c4fedab1-4041-4db5-9245-97439472cf2c.jpg',
                            height: 300,
                            width: 300,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 300,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Image.network(
                            'https://a.cdn-hotels.com/gdcs/production143/d1112/c4fedab1-4041-4db5-9245-97439472cf2c.jpg',
                            height: 300,
                            width: 300,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20), // jarak antar baris
                Row(
                  children: [
                    Text(
                      "Category",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Text(
                      "See All",
                      style: TextStyle(fontSize: 10),
                    ),
                    Icon(Icons.arrow_right),
                  ],
                ),

                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: items.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) {
                        return GestureDetector(
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: EdgeInsets.all(3),
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                              color: current == index
                                  ? Color.fromARGB(255, 78, 202, 255)
                                  : Color.fromARGB(255, 78, 202, 255),
                              borderRadius: current == index
                                  ? BorderRadius.circular(25)
                                  : BorderRadius.circular(25),
                            ),
                            child: Center(
                                child: Text(
                              items[index],
                            )),
                          ),
                        );
                      }),
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const CardHor(),
                      const SizedBox(
                        width: 12,
                      ),
                      const CardHor(),
                      const SizedBox(
                        width: 12,
                      ),
                      const CardHor(),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Text(
                      "Nearly",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Text(
                      "See All",
                      style: TextStyle(fontSize: 10),
                    ),
                    Icon(Icons.arrow_right),
                  ],
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const CardHor1(),
                      const SizedBox(
                        width: 12,
                      ),
                      const SizedBox(height: 10),
                      const CardHor1(),
                      const SizedBox(
                        width: 12,
                      ),
                      const SizedBox(height: 10),
                      const CardHor1(),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Text(
                      "Nearly",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Text(
                      "See All",
                      style: TextStyle(fontSize: 10),
                    ),
                    Icon(Icons.arrow_right),
                  ],
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const CardHor1(),
                      const SizedBox(
                        width: 12,
                      ),
                      const SizedBox(height: 10),
                      const CardHor1(),
                      const SizedBox(
                        width: 12,
                      ),
                      const SizedBox(height: 10),
                      const CardHor1(),
                    ],
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

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Padding(padding: EdgeInsets.all(20)),
            Container(
              width: 100,
              height: 100,
              decoration:
                  BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
              child: Center(
                  child: Icon(
                Icons.person,
                size: 40,
                color: Colors.white,
              )),
            ),
            SizedBox(height: 20),
            Text("Welcome To PickAirlan"),
            SizedBox(height: 10),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                  hintText: "Password",
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  hintText: "Passwor",
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                },
                child: Text("Pindah")),
          ],
        ),
      ),
    );
  }
}

// cardHor

class CardHor extends StatelessWidget {
  const CardHor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: 160,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        // border: Border.all(
        //   width: 1,
        // ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 15,
            color: Colors.black.withOpacity(0.15),
          )
        ],
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              'https://assets.pikiran-rakyat.com/crop/40x22:1057x775/x/photo/2022/07/06/1812828818.jpg',
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              const Text(
                'The Phonix Hotel',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              const Icon(
                Icons.location_on,
                color: Color.fromARGB(255, 252, 181, 0),
                size: 14,
              ),
              const Text('Sleman'),
              const Spacer(),
              const Icon(
                Icons.star,
                color: Color.fromARGB(255, 252, 181, 0),
                size: 14,
              ),
              const Text('9/10'),
              const Spacer(),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Short From"),
              Row(
                children: [
                  Text("\$125",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                  Text("/Night"),
                  const Spacer(),
                  LikeButton(
                    size: 30,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CardHor1 extends StatelessWidget {
  const CardHor1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: 320,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 15,
            color: Colors.black.withOpacity(0.15),
          )
        ],
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              'https://assets.pikiran-rakyat.com/crop/40x22:1057x775/x/photo/2022/07/06/1812828818.jpg',
              height: 100,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'The Phoenix Hotel',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Color.fromARGB(255, 252, 181, 0),
                      size: 14,
                    ),
                    const Text('Sleman'),
                    const Spacer(),
                    const Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 252, 181, 0),
                      size: 14,
                    ),
                    const Text('9/10'),
                    const Spacer(),
                  ],
                ),
                const Spacer(),
                Text('Short From'),
                Row(
                  children: [
                    Text(
                      'Rp25',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text('/Night'),
                    const Spacer(),
                    LikeButton(
                      size: 30,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
