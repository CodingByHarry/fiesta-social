# frozen_string_literal: true

class CreateItemCommand
  string :name
  string :description
  integer :copper
  integer :silver
  integer :gold
  integer :gem

  def execute
    return broadcast(:invalid, item) if item.invalid?

    transaction do
      item.save!
    end

    broadcast(:success)
  end

  private

  def item
    @item ||= ::Item.new(
      name: name,
      description: description,
      amount: amount,
    )
  end

  def amount
    @amount ||= FiestaCurrency.new(copper: copper, silver: silver, gold: gold, gem: gem).to_copper
  end
end