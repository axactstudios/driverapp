import 'package:driverapp/Classes/Constants.dart';
import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';

class CompletedSummary extends StatelessWidget {
  static const routeName = 'CompletedSummary';
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 4,
              child: Container(
                height: pHeight * 0.25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '25-05-2019 (12:45 pm)',
                          style: TextStyle(
                            color: kSecondaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Trade Center',
                          style: TextStyle(
                            color: kSecondaryColor,
                          ),
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            color: kSecondaryColor,
                          ),
                        ),
                        Text(
                          'Executive - (Local Trip)',
                          style: TextStyle(
                            color: kSecondaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/check.png',
                          scale: 2,
                        ),
                        Text(
                          'Trip completed',
                          style: TextStyle(
                            color: kSecondaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 4,
              child: Container(
                height: pHeight * 0.25,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Ride fare',
                              style: TextStyle(
                                color: kSecondaryColor,
                              ),
                            ),
                            Text(
                              'Time fare',
                              style: TextStyle(
                                color: kSecondaryColor,
                              ),
                            ),
                            Text(
                              'add ons',
                              style: TextStyle(
                                color: kSecondaryColor,
                              ),
                            ),
                            Text(
                              'Tax',
                              style: TextStyle(
                                color: kSecondaryColor,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '\$ 13',
                              style: TextStyle(
                                color: kSecondaryColor,
                              ),
                            ),
                            Text(
                              '\$ 5',
                              style: TextStyle(
                                color: kSecondaryColor,
                              ),
                            ),
                            Text(
                              '\$ 4',
                              style: TextStyle(
                                color: kSecondaryColor,
                              ),
                            ),
                            Text(
                              '\$ 2',
                              style: TextStyle(
                                color: kSecondaryColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Total Fare',
                              style: TextStyle(
                                color: kSecondaryColor,
                                fontSize: pHeight * 0.023,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Inclusive of Tax',
                              style: TextStyle(
                                color: kSecondaryColor,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '\$24',
                          style: TextStyle(
                            color: kSecondaryColor,
                            fontSize: pHeight * 0.023,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                width: pWidth,
                height: pHeight * 0.12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Payment mode',
                      style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: pHeight * 0.023,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: pWidth * 0.2,
                      height: pHeight * 0.04,
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.7),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text('Cash')),
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                width: pWidth,
                height: pHeight * 0.12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Commission deducted',
                          style: TextStyle(
                            color: kSecondaryColor,
                            fontSize: pHeight * 0.023,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Inclusive of Tax',
                          style: TextStyle(
                            color: kSecondaryColor,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '\$2.1',
                      style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: pHeight * 0.023,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: pHeight * 0.03,
            ),
            Text('You rated'),
            SizedBox(
              height: pHeight * 0.01,
            ),
            RatingBar.readOnly(
              filledColor: Colors.yellow,
              size: pHeight * 0.04,
              initialRating: 4.0,
              isHalfAllowed: true,
              halfFilledIcon: Icons.star_half,
              filledIcon: Icons.star,
              emptyIcon: Icons.star_border,
            ),
            SizedBox(
              height: pHeight * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton(
                  color: Colors.red,
                  onPressed: () {},
                  child: Text(
                    'Invoice via mail',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text('Support'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
