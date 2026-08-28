import 'package:dio/dio.dart';
import 'package:expense_tracker_app/data/models/expenses_model.dart';
import 'package:expense_tracker_app/utility/constants/constant.dart';

import '../../services/rest_service.dart';

class ExpenseRepository {
  final Dio _dio = RestService().dio;

  Future<List<ExpenseModel>> getExpenses() async {
    try {
      final response = await _dio.get(baseUrl);
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((json) => ExpenseModel.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load expenses');
      }
    } catch (e) {
      throw Exception('Failed to load expenses: $e');
    }
  } // Add methods to interact with the API here

  Future<ExpenseModel> addExpense(ExpenseModel expense) async {
    try {
      final response = await _dio.post(baseUrl, data: expense.toJson());
      if (response.statusCode == 201) {
        return ExpenseModel.fromJson(response.data);
      } else {
        throw Exception('Failed to add expense');
      }
    } catch (e) {
      throw Exception('Failed to add expense: $e');
    }
  }

  Future<void> deleteExpense(int id) async {
    try {
      final response = await _dio.delete('$baseUrl/$id');
      if (response.statusCode != 204) {
        throw Exception('Failed to delete expense');
      }
    } catch (e) {
      throw Exception('Failed to delete expense: $e');
    }
  }
}
