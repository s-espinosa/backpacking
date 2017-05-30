require 'rails_helper'

RSpec.describe Backpack do
  subject { Backpack.new({"1" => 2, "2" => 3}) }

  describe "#total_count" do
    it "can calculate the total number of items it holds" do
      expect(subject.total_count).to eq(5)
    end
  end

  describe "#update_quantity" do
    it "adds an item to its contents" do
      subject.update_quantity(1)
      subject.update_quantity(2)

      expect(subject.contents).to eq({"1" => 3, "2" => 4})
    end
  end

  describe "#quantity_for" do
    it "reports how many of a particular item" do
      expect(subject.quantity_for(1)).to eq(2)
      expect(subject.quantity_for(2)).to eq(3)
    end
  end
end

