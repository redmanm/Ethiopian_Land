import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DialogsExample extends StatelessWidget {
  const DialogsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(32.0),
      children: <Widget>[
        ////// Simple Dialog.
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
          onPressed: () {
            showDialog<String>(
              context: context,
              builder: (BuildContext context) => SimpleDialog(
                title: const Text('Convertor'),
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.account_circle),
                    title: const Text('Convert To Gerigorian Calender'),
                    onTap: () => Navigator.pop(context, '2-3-2023'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.account_circle),
                    title: const Text('Convert To Hijra Calender'),
                    onTap: () => Navigator.pop(context, '1-6-1444'),
                  ),
                ],
              ),
            ).then((returnVal) {
              if (returnVal != null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Today: $returnVal'),
                    action: SnackBarAction(label: 'OK', onPressed: () {}),
                  ),
                );
              }
            });
          },
          child: const Text('Date Convertor'),
        ),

        ////// Date Picker Dialog.
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          onPressed: () {
            showDatePicker(
              context: context,
              initialDate: DateTime.now().add(Duration(days: -8, hours: 6)),
              firstDate: DateTime(2023),
              lastDate: DateTime(2100),
            ).then((DateTime? value) {
              if (value != null) {
                DateTime _fromDate =
                    DateTime.now().add(Duration(days: -8, hours: 6));
                _fromDate = value;
                final String date = DateFormat.yMMMd().format(_fromDate);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Selected date: $date')),
                );
              }
            });
          },
          child: const Text('Calendar'),
        ),
      ]
          .map(
            (Widget button) => Container(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: button,
            ),
          )
          .toList(),
    );
  }
}
