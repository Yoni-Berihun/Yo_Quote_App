import 'package:flutter/material.dart';
import 'dart:math'; 

void main() {
  runApp(QuoteApp());
}

class QuoteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quote of the Day',
      home: QuotePage(),
    );
  }
}

class QuotePage extends StatefulWidget {
  @override
  _QuotePageState createState() => _QuotePageState();
}

class _QuotePageState extends State<QuotePage> {
  final List<String> _quotes = [
    "Success is Something You Attract By Becoming An Attractive Person",
    "The Only way to do great work is to love what you do",
    "Get Busy Living Get Busy Dying",
    "You Only Live Once, But if you do it Right, once is enough",
    "Many of Life's Failures are people Who did not Realize how close they Were to Success when they Gave Up.",
  ];

  String _currentQuote = "Success is Something You Attract By Becoming An Attractive Person";

  void _changeQuote() {
    setState(() {
      final _random = Random();
      _currentQuote = _quotes[_random.nextInt(_quotes.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quote of the Day"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                _currentQuote,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: _changeQuote,
                child: Text('Next Quote'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
