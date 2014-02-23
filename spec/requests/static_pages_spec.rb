require 'spec_helper'

describe "Static pages" do

  subject { page }


  describe "FAQ page" do
    before { visit faq_path }

    it { should have_content('FAQ') }
    it { should have_title(full_title('FAQ')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title(full_title('About Us')) }
  end

  describe "Blog page" do
    before { visit blog_path }

    it { should have_content('Blog') }
    it { should have_title(full_title('Blog')) }
  end
  
  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About Us'))
    click_link "FAQ"
    expect(page).to have_title(full_title('FAQ'))
    click_link "Blog"
    expect(page).to have_title(full_title('Blog'))
  end
end