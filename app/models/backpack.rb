class Backpack
  attr_accessor :contents

  def initialize(contents)
    @contents = contents || {}
  end

  def total_count
    contents.values.inject(:+).to_i
  end

  def update_quantity(item_id)
    contents[item_id.to_s] = (contents[item_id.to_s] || 0) + 1
  end

  def quantity_for(item_id)
    contents[item_id.to_s]
  end
end

