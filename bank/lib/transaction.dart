enum TransactionNature {
  credit,
  debit,
}

enum TransactionType {
  withdrawal,
  deposit,
  payment,
  revenue,
  interest,
  transfer,
}

class Transaction {
  static const _transactionTypeName = {
    TransactionType.withdrawal: "SAQUE",
    TransactionType.deposit : "DEPÓSITO",
    TransactionType.payment : "PAGAMENTO",
    TransactionType.revenue : "RENDIMENTO",
    TransactionType.interest : "JUROS",
    TransactionType.transfer : "TRANSFERÊNCIA",
  };

  final TransactionType type;
  final DateTime date;
  final String? _description;
  late final double _value;

  Transaction({
   required TransactionNature nature,
   required this.type,
   required this.date, 
   required double value, 
   String? description,
  }) : _description = description{ 
    _setValue(value, nature);
  }

  Transaction.now({
   required TransactionNature nature,
   required this.type, 
   required double value, 
   String? description,
  }) : date = DateTime.now(), 
      _description = description{
    _setValue(value, nature);
  }

  void _setValue(double value, TransactionNature nature) {
    if(value.isNegative){
      throw Exception("Negative transaction value");
    }
    _value = nature == TransactionNature.credit ? value : -value;
  }

  String get description => _description ?? _transactionTypeName[type]!;

  double get value => _value;

  bool get isCredit => _value >= 0.0;

  bool get isDebit => _value <= 0.0;
}
