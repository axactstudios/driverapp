import 'package:driverapp/Classes/Constants.dart';
import 'package:driverapp/Screens/TripSummary/Cancelled.dart';
import 'package:driverapp/Screens/TripSummary/CompletedSummary.dart';
import 'package:driverapp/Screens/TripSummary/completed.dart';
import 'package:driverapp/Widgets/Documents.dart';
import 'package:driverapp/Widgets/YourDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CancelledSummary.dart';

class TripSummary extends StatefulWidget {
  static const routeName = 'TripSummary';
  @override
  _TripSummaryState createState() => _TripSummaryState();
}

class _TripSummaryState extends State<TripSummary> {
  bool change = false;
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFFECECEC),
        appBar: AppBar(
          backgroundColor: kSecondaryColor,
          centerTitle: true,
          title: Text(
            'Trip Summary',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            labelStyle: TextStyle(fontSize: pHeight * 0.025),
            labelColor: kAccentColor,
            unselectedLabelColor: Colors.white,
            indicatorColor: kAccentColor,
            tabs: <Widget>[
              Tab(
                text: 'Completed',
              ),
              Tab(
                text: 'Cancelled',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  change = true;
                });
                CompletedSummary();
              },
              child: change == false ? Completed() : CompletedSummary(),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  change = true;
                });
                CancelledSummary();
              },
              child: change == false ? Cancelled() : CancelledSummary(),
            ),
          ],
        ),
      ),
    );
  }
}
