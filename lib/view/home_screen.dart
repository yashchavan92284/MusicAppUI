import 'package:flutter/material.dart';
import 'package:music_app/view/gallary.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State createState() => Screen1();
}

class Screen1 extends State {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/44 1.png',
                ),
                fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height * .4,
              ),
              const Center(
                child: SizedBox(
                  height: 162,
                  width: 314,
                  child: Text(
                    '''Dancing between
The shadows
Of rhythm''',
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 34,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 47,
                width: 261,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(19)),
                    color: Color.fromRGBO(255, 46, 0, 1)),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Gallary()));
                  },
                  child: const Center(
                      child: Text(
                    'Get started',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(19, 19, 19, 1)),
                  )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 47,
                width: 261,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(19)),
                    color: Color.fromRGBO(19, 19, 19, 1)),
                child: const Center(
                    child: Text(
                  'Continue with Email',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(255, 46, 0, 1)),
                )),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 44,
                width: 227,
                child: Center(
                  child: Text(
                    "by continuing you agree to terms of services and  Privacy policy",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(203, 200, 200, 1)),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
