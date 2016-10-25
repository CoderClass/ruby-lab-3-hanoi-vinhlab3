require 'rails_helper'

RSpec.feature "SortProducts", type: :feature do
  def hat_links
    page.all(:css, "h4.product-name a").map(&:text)
  end

  scenario "click on Sort button" do
    product1 = Product.create(name: "aaaa", image_path:"sagsdg")
    product2 = Product.create(name: "cccc",image_path:"sagsdsgvg" )
    product3 = Product.create(name: "bbbb",image_path:"sagsdsgvg" )
    

    visit root_path

    expect(hat_links).to eq ["aaaa", "cccc", "bbbb"]

    click_link "Sort by Alphabetical"

    expect(current_url).to eq root_url(sort: "alphabetical")

    expect(hat_links).to eq ["aaaa", "bbbb", "cccc"]

  end



end
