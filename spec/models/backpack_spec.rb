require 'rails_helper'

RSpec.describe Backpack, type: :model do
  it "can calculate the total number of items it holds" do
    backpack = Backpack.new({"1" => 2, "2" => 3})

    expect(backpack.total_count).to eq(5)
  end

  it "can add an item to its contents" do
    backpack = Backpack.new({"1" => 1})

    backpack.add_item(1)
    backpack.add_item(2)

    expect(backpack.contents).to eq({"1" => 2, "2" => 1})
  end

  it "can report on how many of a particular item it has" do
    backpack = Backpack.new({"1" => 3, "2" => 1})

    expect(backpack.count_of(1)).to eq(3)
  end
end
