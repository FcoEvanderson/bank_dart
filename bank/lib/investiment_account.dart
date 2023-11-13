import './account.dart';
import './revenue_account.dart';

class InvestimentAccount extends RevenueAccount{
  static const _yielPeriodInDays = 1;

  InvestimentAccount({
    required super.agency, 
    required super.number, 
    required super.clientName,
    required super.yieldRatePerYear,
  }) : super(
        type: AccountType.investiment,
        yieldPeriodInDays: _yielPeriodInDays,
      );
}
