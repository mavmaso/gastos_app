import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Titulo'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Valor'),
              controller: amountController,
            ),
            FlatButton(
              child: Text('Adicionar'),
              textColor: Colors.purple,
              onPressed: () {
                addTx(titleController.text,
                double.parse(amountController.text)
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
