import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';
import '../models/expense.dart';
import '../services/storage_service.dart';

/// Central app state for expenses. Screens listen to this via
/// Consumer<ExpenseProvider> / context.watch, so the UI rebuilds
/// automatically whenever an expense is added, edited, or deleted.
class ExpenseProvider extends ChangeNotifier {
  final StorageService _storageService = StorageService();
  final _uuid = const Uuid();

  List<Expense> _expenses = [];
  bool _isLoading = true;

  List<Expense> get expenses {
    final sorted = [..._expenses];
    sorted.sort((a, b) => b.date.compareTo(a.date));
    return sorted;
  }

  bool get isLoading => _isLoading;

  double get totalAmount => _expenses.fold(0.0, (sum, e) => sum + e.amount);

  int get transactionCount => _expenses.length;

  Future<void> loadExpenses() async {
    _isLoading = true;
    notifyListeners();

    _expenses = await _storageService.loadExpenses();

    _isLoading = false;
    notifyListeners();
  }

  Future<void> addExpense({
    required String title,
    required double amount,
    required String category,
    required DateTime date,
  }) async {
    final expense = Expense(
      id: _uuid.v4(),
      title: title,
      amount: amount,
      category: category,
      date: date,
    );
    _expenses.add(expense);
    notifyListeners();
    await _storageService.saveExpenses(_expenses);
  }

  Future<void> updateExpense(Expense updated) async {
    final index = _expenses.indexWhere((e) => e.id == updated.id);
    if (index == -1) return;
    _expenses[index] = updated;
    notifyListeners();
    await _storageService.saveExpenses(_expenses);
  }

  Future<void> deleteExpense(String id) async {
    _expenses.removeWhere((e) => e.id == id);
    notifyListeners();
    await _storageService.saveExpenses(_expenses);
  }
}
