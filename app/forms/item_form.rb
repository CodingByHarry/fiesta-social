class ItemForm
  include ActiveModel::Model

  attr_accessor :name
  attr_accessor :description
  attr_accessor :copper
  attr_accessor :silver
  attr_accessor :gold
  attr_accessor :gem
  attr_accessor :owner_id

  delegate :model_name, to: Item
end