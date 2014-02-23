require 'spec_helper'
describe "Static pages" do

describe "Blog page" do
it "should have the content 'Blog'" do
visit '/static_pages/blog'
expect(page).to have_content('Blog')
end
it "should have the title 'Blog'" do
visit '/static_pages/blog'
expect(page).to have_title("Ruby on Rails Tutorial Sample App | Blog")
end
end

describe "Faq page" do
it "should have the content 'Faq'" do
visit '/static_pages/faq'
expect(page).to have_content('Faq')
end
it "should have the title 'Faq'" do
visit '/static_pages/faq'
expect(page).to have_title("Ruby on Rails Tutorial Sample App | Faq")
end
end
describe "About page" do
it "should have the content 'About Us'" do
visit '/static_pages/about'
expect(page).to have_content('About Us')
end
it "should have the title 'About Us'" do
visit '/static_pages/about'
expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
end
end
end
