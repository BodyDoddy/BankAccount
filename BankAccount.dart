void main(){
final newuser= ConcreteAccountUser("1234", 1000);
newuser.displayAccountInfo();
newuser.deposit(500);  // Valid deposit
newuser.withdraw(10);  // Valid withdrawal
newuser.withdraw(2000); // Insufficient balance
newuser.deposit(-100); // Invalid deposit
newuser.withdraw(-50); // Invalid withdrawal
newuser.withdraw(1500); // Invalid withdrawal
}
abstract class AccountUser{
    String _accountID;
    int _balance=0;
    AccountUser(this._accountID,this._balance);
    void deposit(int amount){
    if (amount <= 0) { 
        print("Invalid amount");
    } else {
        _balance += amount;
        print("Deposited: $amount\nNew Balance: $_balance");
    }
    }
    void withdraw(int money){
    if(money>0){    
        if(money>_balance){
            print("Insufficient Balance");
        }
        else{
            _balance -=money;
            print("Withdrawn: $money\nNew Balance: $_balance");            

        }
  }
    else{
        print("Invalid amount");
    }
        }
    void displayAccountInfo(){
        print("Your ID is $_accountID balance is $_balance");
    }
}

class ConcreteAccountUser  extends AccountUser  {
  ConcreteAccountUser (String accountID, int balance) : super(accountID, balance);
  ConcreteAccountUser.named(String accountID) : super(accountID, 0);
}
