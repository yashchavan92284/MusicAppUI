import 'package:flutter/material.dart';
import 'package:music_app/view/player.dart';

class Gallary extends StatefulWidget {
  const Gallary({super.key});

  @override
  State<Gallary> createState() => _GallaryState();
}

class _GallaryState extends State<Gallary> {
  List<String> songs = [
    "assets/Rectangle 32.png",
    "assets/Rectangle 34.png",
    "assets/Rectangle 38.png",
    "assets/Rectangle 32.png",
    "assets/Rectangle 39.png",
    "assets/Rectangle 40.png",
  ];
  List title = [
    "Dead inside",
    "Alone",
    "Heartless",
    "Dead inside",
    "Alone",
    "Heartless",
  ];
  List date = ["2020", "2021", "2020", "2023", "2024", "2019"];
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(24, 24, 24, 1),
      body: Column(
        children: [
          Container(
            height: height * .45,
            width: width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/111 1.png',
                  ),
                  fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 250, left: 10),
                  width: 163,
                  height: 44,
                  child: const Text(
                    'A.L.O.N.E',
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          foregroundColor: WidgetStateProperty.all(
                            const Color.fromRGBO(19, 19, 19, 1),
                          ),
                          backgroundColor: WidgetStateProperty.all(
                              const Color.fromRGBO(255, 46, 0, 1))),
                      child: const Text("Subscribe",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ))),
                ),
              ],
            ),
          ),
          //Horizontal songs list
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (contex) => const Player()));
            },
            child: SizedBox(
              height: height * 0.3,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: songs.length,
                  itemBuilder: (context, index) {
                    return Container(
                      // width: 120,
                      // height: 140,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(19, 19, 19, 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      margin: const EdgeInsets.all(8.0),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 140,
                            height: 160,
                            child: Image.asset(
                              songs[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            child: SizedBox(
                              child: Text(
                                title[index],
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(203, 200, 200, 1)),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            child: SizedBox(
                              child: Text(
                                date[index],
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(132, 125, 125, 1),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: const Text("Popular singles",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(203, 200, 200, 1))),
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: const Text("Sell all",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(248, 162, 69, 1))),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: songs.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: width,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(8.0),
                              color: const Color.fromRGBO(19, 19, 19, 1),
                              height: 75,
                              width: 67,
                              padding: const EdgeInsets.all(5),
                              child: Image.asset(
                                songs[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title[index],
                              style: const TextStyle(color: Colors.white),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  date[index],
                                  style: const TextStyle(
                                      color: Color.fromRGBO(132, 125, 125, 1),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "Easy Living",
                                  style: TextStyle(
                                      color: Color.fromRGBO(132, 125, 125, 1),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.list_sharp))
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
