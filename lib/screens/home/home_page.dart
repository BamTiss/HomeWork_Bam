import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Row(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 30.0,
                        height: 30.0,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/Remove.jpg'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Premium',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'The Secrets to be Fluent in English',
                style: TextStyle(
                  color: Color(0xFF808080),
                  fontSize: 17.0,
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 222, 250, 255),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: _buidCatagoryButton(
                            'Full Access to Pattern Lesson',
                            Icons.book,
                            Colors.lightBlue,
                            value1,
                          ),
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        Expanded(
                          child: _buidCatagoryButton(
                            'Unlock All Limitation',
                            Icons.login,
                            Colors.orange,
                            false,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: _buidCatagoryButton(
                            'All Topics Available',
                            Icons.all_inclusive,
                            Colors.pink,
                            false,
                          ),
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        Expanded(
                          child: _buidCatagoryButton(
                            'Personalize Coaching',
                            Icons.person,
                            Colors.green,
                            false,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                         '2021 Special Early Birds Offer',
                          style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.red,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'IDR50.000 /',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        'month',
                        style: TextStyle(fontSize: 15.0),
                      ),
                      SizedBox(
                        width: 5.0,
                      )
                    ],
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            value1 = !value1;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 8.0,
                          ),
                          child: Text('Start 3 Days Free Trail'),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'View All Plan',
                        style: TextStyle(
                          fontSize: 10.0,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _buidCatagoryButton(
    String text,
    IconData icon,
    Color color,
    bool isSelected,
  ) {
    return Container(
      decoration: BoxDecoration(
          color: isSelected ? color : Colors.white,
          borderRadius: BorderRadius.circular(50.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 7,
              blurRadius: 12,
              offset: Offset(0, 10), // changes position of shadow
            ),
          ]),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: isSelected ? Colors.white : color,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: isSelected ? color : Colors.white,
            ),
          ),
          Text(
            text,
            style: TextStyle(color: isSelected ? Colors.white : Colors.black87),
          ),
        ],
      ),
    );
  }
}
