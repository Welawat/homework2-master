import 'package:flutter/material.dart';

import '../../widgets/category_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var value1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blueAccent, Colors.blueGrey],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello!',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 22.0,
                      ),
                    ),
                    SizedBox(height: 5.0,),
                    Row(
                      children: [
                        Text(
                          'Wiw Welawat',
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Image.asset('assets/images/hand_wave.png',width: 35.0),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black,
                      width: 3.0,
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/img.png'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 222, 250, 255),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(color: Colors.white54,),
                        child: Text(
                          'Activity',
                          style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.red,),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.center,
                            child: CategoryButton(
                              text: 'Games',
                              icon: Icons.games,
                              color: Colors.blue,
                              isSelected: value1,
                            ),
                          ),
                        ),
                        SizedBox(width: 15.0,),
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.center,
                            child: CategoryButton(
                              text: 'YouTube',
                              icon: Icons.youtube_searched_for,
                              color: Colors.red,
                              isSelected: !value1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.center,
                            child: CategoryButton(
                              text: 'podcasts',
                              icon: Icons.podcasts,
                              color: Colors.purple,
                              isSelected: true,
                            ),
                          ),
                        ),
                        SizedBox(width: 15.0,),
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.center,
                            child: CategoryButton(
                              text: 'live',
                              icon: Icons.live_tv,
                              color: Colors.green,
                              isSelected: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          value1 = !value1;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.redAccent,
                        padding: EdgeInsets.symmetric(
                            horizontal: 32.0, vertical: 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        shadowColor: Colors.blueAccent,
                        elevation: 5.0,
                      ),
                      child: Text(
                        'Next',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}