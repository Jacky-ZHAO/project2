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
end