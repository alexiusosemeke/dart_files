import 'dart:io';

void main() {
  var bankAccount = BankAccountSimulator(null, null);
  bankAccount.showData();

  var bankingMenu = BankingMenu(
    bankAccount.account_name!,
    bankAccount.initial_deposit,
  );
  bankingMenu.showMenu();
}

class BankAccountSimulator {
  String? account_name;
  dynamic initial_deposit;
  BankAccountSimulator(this.account_name, this.initial_deposit);

  void showData() {
    while (account_name == null ||
        account_name!.isEmpty ||
        !isAlphabets(account_name!) ||
        initial_deposit == null ||
        initial_deposit < 1000) {
      try {
        stdout.write('Enter your account name:');
        account_name = stdin.readLineSync();

        stdout.write('Enter your initial deposit: ');
        initial_deposit = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

        if (account_name == null ||
            account_name!.isEmpty ||
            !isAlphabets(account_name!)) {
          print('Name cannot be empty or contain digits.');
        } else if (initial_deposit < 1000) {
          print('Deposit must be at least 1000.');
        } else {
          print('Account created successfully!');
        }
      } catch (e) {
        print('An error occurred: $e');
      }
    }
  }
}

class BankingMenu extends BankAccountSimulator {
  dynamic account_balance;

  // BankingMenu(this.account_balance, super.account_name, super.initial_deposit);

  BankingMenu(String account_name, double initial_deposit)
    : account_balance = initial_deposit,
      super(account_name, initial_deposit);

  void showMenu() {
    try {
      stdout.write('Your account balance is $account_balance. ');
      // do something here
    } catch (e) {
      throw ArgumentError('Value cannot be negative: $e');
      // do something here
    }
  }
}

bool isAlphabets(String value) => !RegExp(r'\d').hasMatch(value);
