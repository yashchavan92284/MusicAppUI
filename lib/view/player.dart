import 'package:flutter/material.dart';

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: height * .70,
            width: width * 1,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/player.png'), fit: BoxFit.cover)),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Text(
                  "Alone in the Abyss",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(230, 154, 21, 1)),
                ),
                Text(
                  "Youlakou",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(255, 255, 255, 1)),
                ),
                Row(
                  children: [
                    Spacer(),
                    Icon(
                      Icons.upload_rounded,
                      color: Colors.amber,
                    )
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, top: 20),
                child: const Text(
                  "Dynamic Warmup | ",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(255, 255, 255, 1)),
                ),
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(
                  left: 10,
                  top: 10,
                ),
                child: const Text(
                  "4 min",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(255, 255, 255, 1)),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Previous song button
              IconButton(
                onPressed: () {
                  // Handle previous song button press
                },
                icon: const Icon(Icons.skip_previous),
                color: Colors.white,
              ),

// Play/pause button
              IconButton(
                onPressed: () {
                  // Handle play/pause button press
                },
                icon: const Icon(
                  Icons.play_arrow,
                  size: 30,
                ),
                color: Colors.white,
              ),

// Next song button
              IconButton(
                onPressed: () {
                  // Handle next song button press
                },
                icon: const Icon(Icons.skip_next),
                color: Colors.white,
              ),
            ],
          )
        ],
      ),
      // bottomNavigationBar: ,
      bottomNavigationBar: BottomNavigationBar(
        // fixedColor: Colors.black,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        // currentIndex: _selectedIndex,
        // onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.favorite),
            label: 'Fav',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
