
import 'package:bank/account.dart';

import './revenue_account.dart';

class SavingAccount extends RevenueAccount {
  static const _yieldRatePerYear = 6.00;
  static const _yielPeriodInDays = 30;

  SavingAccount({
    required super.agency,
    required super.number,
    required super.clientName,
  }) : super(
        type: AccountType.saving,
        yieldPeriodInDays: _yielPeriodInDays,
        yieldRatePerYear: _yieldRatePerYear,
      );
}