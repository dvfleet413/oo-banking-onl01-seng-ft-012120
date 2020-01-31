require 'pry'
class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    sender.valid? && receiver.valid?
  end
  
  def execute_transaction
    if self.status == "pending" && sender.balance >= amount
      sender.balance -= amount
      receiver.balance += amount
      self.status = "complete"
    elsif sender.balce < amount
      
    end
  end
end
