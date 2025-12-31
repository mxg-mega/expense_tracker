import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class ExpensesTracker extends StatefulWidget {
  const ExpensesTracker({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ExpensesTrackerState();
  }
}

class _ExpensesTrackerState extends State<ExpensesTracker> {
  List<Expense> _registeredExpenses = [
    Expense(
      title: "Flutter Course",
      amount: 19.99,
      category: Category.personal,
      date: DateTime.now(),
    ),
    Expense(
      title: "Jordan Ticket",
      amount: 100,
      category: Category.travel,
      date: DateTime.now(),
    ),
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter ExpenseTracker"),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          Text('Expenses Chart'),
          Expanded(
            child: ExpensesList(
              expenses: _registeredExpenses,
            ),
          ),
        ],
      ),
    );
  }
}
