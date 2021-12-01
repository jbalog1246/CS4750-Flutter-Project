import 'dart:collection';

import 'package:flutter/material.dart';


class ResultDialog extends StatelessWidget {
  final HashMap<String, double> result;
  final String sharedMessage;

  ResultDialog({key, this.result, this.sharedMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Result'),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Tip amount'),
              Text(result['tip'].toStringAsFixed(2))
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Total amount'),
              Text(result['amount'].toStringAsFixed(2))
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

            ],
          )
        ],
      ),
      actions: <Widget>[
        new FlatButton(
          child: new Text(
            'OK',
            style: TextStyle(color: Colors.white),
          ),
          color: Color(0xFF60CDE8),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
