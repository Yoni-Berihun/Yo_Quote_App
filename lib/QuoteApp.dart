import 'package:flutter/material.dart';
import 'package:myapp/QuotePage.dart';




class QuoteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Quote of the Day', home: QuotePage());
  }
}

