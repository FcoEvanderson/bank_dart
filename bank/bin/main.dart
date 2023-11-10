
import 'package:bank/current_account.dart';
import 'package:bank/special_account.dart';

void main (){
  var c = CurrentAccount(agency: 123, 
    number: 123456, 
    clientName: "Fulano");

  var s = SpecialAccount(agency: 645, 
    number: 98756, 
    clientName: "Fulano de tal", 
    limit: 1000.0);

  s.deposit(500.0);
  s.withdrawal(500.0);

  s.statement();

  print("current: ${s.balance}");
  print("special: ${s.balance}");
}