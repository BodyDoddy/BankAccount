# Bank Account Manager

A simple Dart-based application that simulates basic bank account operations, such as depositing, withdrawing, and displaying account information. This project demonstrates the use of object-oriented programming principles like abstraction and inheritance.

## Features

- **Create Accounts**: Instantiate new accounts with unique IDs and an initial balance.
- **Deposit Money**: Add funds to your account while validating the input.
- **Withdraw Money**: Subtract funds from your account with checks for insufficient balance and invalid inputs.
- **Display Account Info**: Retrieve and display the account's ID and balance.

## Code Structure

### Abstract Class: `AccountUser`

Represents a general blueprint for account users.

#### Methods:
- `deposit(int amount)`: Adds a valid amount to the balance.
- `withdraw(int amount)`: Subtracts a valid amount if sufficient funds are available.
- `displayAccountInfo()`: Prints the account ID and balance.

### Concrete Class: `ConcreteAccountUser`

Extends `AccountUser` to provide concrete implementations.

#### Constructors:
- **Default Constructor**: Sets the account ID and balance.
- **Named Constructor**: Creates accounts with a default balance of 0.

## Example Usage

The `main()` function demonstrates various scenarios of account operations:

```dart
void main() {
  final newUser = ConcreteAccountUser("1234", 1000);

  newUser.displayAccountInfo();

  newUser.deposit(500);   // Valid deposit
  newUser.withdraw(10);   // Valid withdrawal
  newUser.withdraw(2000); // Insufficient balance
  newUser.deposit(-100);  // Invalid deposit
  newUser.withdraw(-50);  // Invalid withdrawal
  newUser.withdraw(1500); // Invalid withdrawal
}
```

## Getting Started

### Prerequisites

Ensure you have the following installed:
- [Dart SDK](https://dart.dev/get-dart)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/bank-account-manager.git
   ```
2. Navigate to the project directory:
   ```bash
   cd bank-account-manager
   ```
3. Run the application:
   ```bash
   dart run
   ```

## Output Example

```
Account ID: 1234
Current Balance: 1000
Depositing 500... Success!
New Balance: 1500
Withdrawing 10... Success!
New Balance: 1490
Withdrawing 2000... Error: Insufficient balance!
Depositing -100... Error: Invalid amount!
Withdrawing -50... Error: Invalid amount!
Withdrawing 1500... Error: Insufficient balance!
```

## Project Structure

```
├── lib
│   ├── account_user.dart       # Abstract class definition
│   ├── concrete_account_user.dart  # Concrete class implementation
├── main.dart                  # Main entry point of the application
├── README.md                  # Project documentation
```

## Contributing

Contributions are welcome! Feel free to submit a pull request or open an issue to improve the project.

## License

This project is licensed under the [MIT License](LICENSE).

Dart SDK: Ensure you have the Dart SDK installed to run the program.
Running the Program
Run the Dart program using:

bash
Copy code
dart BankAccount.dart
