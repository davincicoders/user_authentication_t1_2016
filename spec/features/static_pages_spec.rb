require 'rails_helper'

feature 'Static Pages' do
  scenario '(homepage) has the proper links' do
    visit root_path

    within('.navbar-header') do
      expect(page).to have_link("DaVinci Motors", href: root_path)
    end

    within('li.active') do
      expect(page).to have_link("Cars", href: root_path)
    end
  end

  scenario '(about_us) has the proper links' do
    visit root_path

    click_link 'About'

    expect(page.current_path).to eq(about_path)

    within('.navbar-header') do
      expect(page).to have_link("DaVinci Motors", href: root_path)
    end

    within('li.active') do
      expect(page).to have_link("About", href: about_path)
    end

    expect(page).to have_css('h1', text: 'About Us')
    expect(page).to have_css('p', text: 'DaVinci Motors is the place to find your next gently used car')
  end
end
