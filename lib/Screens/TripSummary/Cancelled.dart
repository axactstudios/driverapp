import 'package:driverapp/Classes/Constants.dart';
import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';

class Cancelled extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          width: pWidth,
          height: pHeight * 0.05,
          color: kSecondaryColor,
          padding: EdgeInsets.symmetric(horizontal: pWidth * 0.03),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  child: Row(
                    children: [
                      Image.asset('images/sort.png'),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Sort',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  child: Row(
                    children: [
                      Image.asset('images/filter.png'),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Filter',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Card(
          elevation: 4,
          child: Container(
            height: pHeight * 0.17,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'images/man.png',
                      height: pHeight * 0.13,
                      width: pHeight * 0.13,
                    ),
                    Text(
                      'Stephen',
                      style: TextStyle(
                        color: kSecondaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '25-05-2019 (12:45 pm)',
                      style: TextStyle(
                        color: kSecondaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text('Dist.'),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '5 mi',
                          style: TextStyle(
                              color: kSecondaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: pHeight * 0.025),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Dur'),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '20 min',
                          style: TextStyle(
                            color: kSecondaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: pHeight * 0.025,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Your Cancellation',
                      style: TextStyle(
                        color: Theme.of(context).errorColor,
                        fontWeight: FontWeight.bold,
                        fontSize: pHeight * 0.025,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/cross.png',
                      // scale: 2,
                    ),
                    Text('Approx'),
                    Text(
                      '\$17.8',
                      style: TextStyle(
                        color: kSecondaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: pHeight * 0.035,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Card(
          elevation: 4,
          child: Container(
            height: pHeight * 0.17,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'images/man.png',
                      height: pHeight * 0.13,
                      width: pHeight * 0.13,
                    ),
                    Text(
                      'Stephen',
                      style: TextStyle(
                        color: kSecondaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '25-05-2019 (12:45 pm)',
                      style: TextStyle(
                        color: kSecondaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text('Dist.'),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '5 mi',
                          style: TextStyle(
                              color: kSecondaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: pHeight * 0.025),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Dur'),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '20 min',
                          style: TextStyle(
                            color: kSecondaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: pHeight * 0.025,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Rider Cancelled',
                      style: TextStyle(
                        color: Theme.of(context).errorColor,
                        fontWeight: FontWeight.bold,
                        fontSize: pHeight * 0.025,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/cross.png',
                      // scale: 2,
                    ),
                    Text('Approx.'),
                    Text(
                      '\$9.7',
                      style: TextStyle(
                        color: kSecondaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: pHeight * 0.035,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
