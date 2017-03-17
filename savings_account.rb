# savings_account.rb
require_relative 'account.rb'

class SavingsAccount < Account
  def initialize(balance, name, phone_number, interest, minimum)
    super(balance, name, phone_number)
    @interest = interest
    @minimum = minimum
  end

  def accumulate_interest
    @balance += @balance * interest / 100
  end
  def to_s
    super.to_s + "\nInterest: #{@interest}% \nMinimum: $#{@minimum}"
  end

  def withdraw(amount)
    super(amount) if (@balance - amount >= @minimum)
    puts "Balance cannot drop below: #{amount}"
  end

end

save_acc = SavingsAccount.new(1000, 'Thanh','012345678899', 6, 10)

puts save_acc

save_acc.withdraw(1000)