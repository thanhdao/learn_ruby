#account.rb
class Account
  def initialize(balance, name, phone_number)
    @balance = balance
    @name = name
    @phone_number = phone_number
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def to_s
    "Name: #{@name} \nPhone number: #{@phone_number} \nBalance: $#{@balance}"
  end

  def display
    puts "Name: #{@name}"
    puts "Phone number: #{@phone_number}"
    puts "Balance: $#{@balance}"
  end

  def transfer(amount, target_account)
    @balance -= amount
    target_account.deposit(amount)
  end

  def status
    @balance
  end

end

# bob_account = Account.new(500, "Bob", " 0123456789")
# bob_account.display
# bob_account.withdraw(200)
# bob_account.display
