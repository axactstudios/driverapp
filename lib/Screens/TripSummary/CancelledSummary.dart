import 'package:driverapp/Classes/Constants.dart';
import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';

class CancelledSummary extends StatelessWidget {
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
                          'images/cross.png',
                        ),
                        Text(
                          'Rider Cancelled',
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
            SizedBox(
              height: pHeight * 0.03,
            ),
            Text(
              'Cancellation reason',
              style: TextStyle(
                color: kSecondaryColor,
                fontSize: pHeight * 0.03,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: pHeight * 0.03,
            ),
            Text(
              'Planned Cancel',
              style: TextStyle(
                color: kSecondaryColor,
                fontSize: pHeight * 0.025,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
