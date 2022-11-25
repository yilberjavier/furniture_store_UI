import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _listItem = [
    'assets/images/p-1.jpg',
    'assets/images/p-2.jpg',
    'assets/images/p-3.jpg',
    'assets/images/p-4.jpg',
    'assets/images/p-5.jpg',
    'assets/images/p-2.jpg',
    'assets/images/p-3.jpg',
    'assets/images/p-1.jpg',
    'assets/images/p-4.jpg',
    'assets/images/p-5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      //--------------------------------------------------------------------//
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu),
        title: Text('H O M E'),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              width: 36,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage('assets/images/profile.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
      //--------------------------------------------------------------------//
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage('assets/images/p-4.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.4),
                        Colors.black.withOpacity(.2),
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Lifestyle Sale',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        height: 60,
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            'Shop Now',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20.0),
              //--------------------------------------------------------------------//
              Expanded(
                child: GridView.count(
                  // scrollDirection: Axis.vertical,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  // map list-------------//
                  children: _listItem
                      .map(
                        (item) => Card(
                          color: Colors.transparent,
                          elevation: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage(item), fit: BoxFit.cover),
                            ),
                            child: Transform.translate(
                              offset: Offset(55, -50),
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 70, vertical: 65),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white),
                                child: Icon(Icons.bookmark_border),
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                  // map list-------------//
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
