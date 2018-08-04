class Bank
  def initialize
    @balances = 0
  end

  # Methods

  def balance
    @balances
  end

  def withdraw(value)
    @balances -= value
  end

  def deposit(value)
    @balances += value
  end

  def situation
    "#{balance} - #{status}"
  end

  private

  def status
    balance > 0 ? 'Positive' : 'Negative'
  end
end
