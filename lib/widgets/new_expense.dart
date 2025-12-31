import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  // var enteredValue = '';

  // void _saveTitleInput(String inputValue) {
  //   enteredValue = inputValue;
  // }

  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            maxLength: 50,
            controller: _titleController,
            // onChanged: _saveTitleInput
            decoration: const InputDecoration(
              label: Text('Title'),
            ),
          ),
          TextField(
            controller: _amountController,
            decoration: const InputDecoration(
              prefixText: '\$',
              label: Text('Amount'),
            ),
            keyboardType: TextInputType.number,
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Cancel"),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  print(_titleController.text);
                  print(_amountController.text);
                },
                child: const Text('Save Expense'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
