import 'package:get/get.dart';

import '../../../data/models/expenses_model.dart';
import '../../../data/repository/expense_repository.dart';

class HomeController extends GetxController {
  final repo = ExpenseRepository();

  var expenses = <ExpenseModel>[].obs;
  var isLoading = false.obs;

  @override
  onInit() {
    super.onInit();
    fetchExpenses();
  }

  Future<void> fetchExpenses() async {
    isLoading(true);
    try {
      var result = await repo.getExpenses();
      expenses.assignAll(result);
    } catch (e) {
      Get.snackbar('Error', 'Failed to load expenses: $e');
    } finally {
      isLoading(false);
    }
  }
}
