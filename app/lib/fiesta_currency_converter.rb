class FiestaCurrencyConverter

  attr_reader :copper, :silver, :gold, :gem

  def initialize(copper: 0, silver: 0, gold: 0, gem: 0)
    @copper = copper
    @silver = silver
    @gold = gold
    @gem = gem
  end

  def to_copper
    total = @copper
    total = total + @silver * 1_000
    total = total + @gold * 1_000_000
    total = total + @gem * 100_000_000
  end

  def from_copper
    {
      gem: gems_with_change.first,
      gold: gold_with_change.first,
      silver: silver_with_change.first,
      copper: silver_with_change.last,
    }
  end

  private

  def gems_with_change
    copper.divmod(100_000_000)
  end

  def gold_with_change
    gems_with_change.last.divmod(1_000_000)
  end

  def silver_with_change
    gold_with_change.last.divmod(1_000)
  end
end