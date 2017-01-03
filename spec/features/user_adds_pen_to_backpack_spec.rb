require 'rails_helper'

RSpec.feature "User adds a pen to their backpack", type: :feature do
  before(:all) do
    Item.create!(
      name: "Rollerball Pen",
      image_url: "/images/rollerball_pen.jpeg"
    )
  end

  scenario "a message is displayed" do
    visit root_path
    click_button "Add Item"

    expect(page).to have_content("You now have 1 Rollerball Pen.")
  end
end

