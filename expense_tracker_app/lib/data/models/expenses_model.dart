class ExpenseModel {
  final int? id;
  final String description;
  final double amount;
  final DateTime? createdAt;
  final String category;

  ExpenseModel({this.id, required this.description, required this.amount, this.createdAt, required this.category});

  factory ExpenseModel.fromJson(Map<String, dynamic> json) => ExpenseModel(
    id: json["id"],
    description: json["description"] ?? "",
    amount: json["amount"]?.toDouble() ?? 0.0,
    createdAt: json["createdAt"] != null ? DateTime.parse(json["createdAt"]) : null,
    category: json["category"] ?? "",
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "description": description,
    "amount": amount,
    "createdAt": createdAt,
    "category": category,
  };
}
