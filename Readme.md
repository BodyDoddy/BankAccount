Bank Account Manager
A simple Dart-based application that simulates basic bank account operations, such as depositing, withdrawing, and displaying account information. This project demonstrates the use of object-oriented programming principles like abstraction and inheritance.

Features
Create Accounts: Instantiate new accounts with unique IDs and an initial balance.
Deposit Money: Add funds to your account while validating the input.
Withdraw Money: Subtract funds from your account with checks for insufficient balance and invalid inputs.
Display Account Info: Retrieve and display the account's ID and balance.
Code Structure
Abstract Class (AccountUser):

Represents a general blueprint for account users.
Methods:
deposit(int amount): Adds a valid amount to the balance.
withdraw(int money): Subtracts a valid amount if sufficient funds are available.
displayAccountInfo(): Prints account ID and balance.
Concrete Class (ConcreteAccountUser):

Extends AccountUser to provide concrete implementations.
Constructors:
Default constructor to set account ID and balance.
Named constructor for accounts with a default balance of 0.
Example Usage
The main() function demonstrates various scenarios of account operations:

dart
Copy code
void main(){
  final newuser = ConcreteAccountUser("1234", 1000);

  newuser.displayAccountInfo();

  newuser.deposit(500);  // Valid deposit
  newuser.withdraw(10);  // Valid withdrawal
  newuser.withdraw(2000); // Insufficient balance
  newuser.deposit(-100); // Invalid deposit
  newuser.withdraw(-50); // Invalid withdrawal
  newuser.withdraw(1500); // Invalid withdrawal
}
Getting Started
Prerequisites
Dart SDK: Ensure you have the Dart SDK installed to run the program.
Running the Program
Run the Dart program using:

bash
Copy code
dart BankAccount.dart