class Account:
    def __init__(self, account_no, holder_name, balance):
        self.account_no = account_no
        self.holder_name = holder_name
        self.balance = balance

    def deposit(self, amount):
        self.balance += amount
        print("Deposit successful. New balance:", self.balance)

    def withdraw(self, amount):
        if amount > self.balance:
            print("Insufficient balance.")
        else:
            self.balance -= amount
            print("Withdrawal successful. New balance:", self.balance)

    def check_balance(self):
        print("Current balance for account", self.account_no, ":", self.balance)


class SavingsAccount(Account):
    def __init__(self, account_no, holder_name, balance, interest_rate):
        super().__init__(account_no, holder_name, balance)
        self.interest_rate = interest_rate

    def add_interest(self):
        interest = self.balance * self.interest_rate / 100
        self.balance += interest
        print("Interest added. New balance:", self.balance)


s1 = SavingsAccount(201, "Ravi", 10000, 5)

s1.deposit(2000)
s1.add_interest()
s1.check_balance()
