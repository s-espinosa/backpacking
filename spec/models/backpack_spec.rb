require 'rails_helper'

RSpec.describe Backpack, type: :model do
  it "can calculate the total number of items it holds" do
    backpack = Backpack.new({"1" => 2, "2" => 3})

    expect(backpack.total_count).to eq(5)
  end
end
