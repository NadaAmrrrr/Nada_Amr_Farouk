
class OverdrawException implements Exception {
  String errorMessage() {
    return 'Withdrawal amount exceeds the available balance.';
  }
}

class BankAccount {
  double balance;

  BankAccount(this.balance);

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print('Deposited: \$${amount}');
    } else {
      print('Invalid deposit amount.');
    }
  }

  // Method to withdraw money
  void withdraw(double amount) {
    try {
      if (amount > balance) {
        throw OverdrawException();
      } else if (amount <= 0) {
        print('Invalid withdrawal amount.');
      } else {
        balance -= amount;
        print('Withdrawn: \$${amount}');
      }
    } on OverdrawException catch (e) {
      print(e.errorMessage());
    }
  }

  // Method to display balance
  void displayBalance() {
    print('Current balance: \$${balance}');
  }
}



