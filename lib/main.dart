import 'package:driverapp/Screens/AccountSummary/TransferScreen.dart';
import 'package:driverapp/Screens/AllTrips/CancelledTrips.dart';
import 'package:driverapp/Screens/AllTrips/ChatScreen.dart';
import 'package:driverapp/Screens/AllTrips/FinishedTrip.dart';
import 'package:driverapp/Screens/AllTrips/ThankYouScreen.dart';
import 'package:driverapp/Screens/SplashScreen.dart';
import 'package:driverapp/Screens/SupportScreen.dart';
import 'package:driverapp/Screens/TermsCondition.dart';
import 'package:driverapp/Screens/TripSummary/CompletedSummary.dart';
import 'package:driverapp/Screens/TripSummary/Tripsummary.dart';
import 'package:flutter/material.dart';
import 'Screens/AccountSummary/AccountSummaryMain.dart';
import 'Screens/AccountSummary/CommissionDue.dart';
import 'Screens/AccountSummary/SettlementDue.dart';
import 'Screens/AccountSummary/TotalIncome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      routes: {
        ThankYouScreen.routeName: (ctx) => ThankYouScreen(),
        TotalIncome.routeName: (ctx) => TotalIncome(),
        CommissionDue.routeName: (ctx) => CommissionDue(),
        SettlementDue.routeName: (ctx) => SettlementDue(),
        TransferScreen.routeName: (ctx) => TransferScreen(),
        CompletedSummary.routeName: (ctx) => CompletedSummary(),
        TripSummary.routeName: (ctx) => TripSummary(),
      },
      home: TripSummary(),
    );
  }
}
