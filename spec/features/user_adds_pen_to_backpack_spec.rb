require 'rails_helper'

RSpec.feature "User adds a pen to their backpack", type: :feature do
  scenario "a message is displayed" do
    Item.create!(
      name: "Rollerball Pen",
      image_url: "/images/rollerball_pen.jpeg"
    )

    visit root_path
    click_button "Add Item"

    expect(page).to have_content("You now have 1 Rollerball Pen.")
  end
end

