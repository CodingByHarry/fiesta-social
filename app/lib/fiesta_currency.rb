# copper = 196_748_230

# amount = copper.divmod(100_000_000)
# gems = amount.first
# change = amount.last

# amount = change.divmod(1_000_000)
# gold = amount.first
# change = amount.last

# amount = change.divmod(1_000)
# silver = amount.first
# change = amount.last

# copper = change

class FiestaCurrency
  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def gems
    gems_with_change.first
  end

  def gold 
    gold_with_change.first
  end

  def silver
    silver_with_change.first
  end

  def copper
    silver_with_change.last
  end

  private

  def gems_with_change
    amount.divmod(100_000_000)
  end

  def gold_with_change
    gems_with_change.last.divmod(1_000_000)
  end

  def silver_with_change
    gold_with_change.last.divmod(1_000)
  end

  def to_copper(copper, silver, gold, gems)
    1_000
  end
end