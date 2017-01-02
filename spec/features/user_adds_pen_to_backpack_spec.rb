require 'rails_helper'

RSpec.feature "User adds a pen to their backpack", type: :feature do
  scenario "displays capture message and backpack content" do
    Item.create!(
      name: "Rollerball Pen",
      image_url: "/images/rollerball_pen.jpeg"
    )

    visit root_path

    expect(page).to have_content("Backpack: 0")

    click_button "Add Item"

    expect(page).to have_content("You now have 1 Rollerball Pen.")
    expect(page).to have_content("Backpack: 1")
  end
end

