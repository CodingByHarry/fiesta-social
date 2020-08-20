module ApplicationHelper
  def handle_no_bin(copper)
    if copper == nil || copper.blank?
      "Not set"
    else
      FiestaCurrencyConverter.new(copper: copper).from_copper
    end
  end
end
