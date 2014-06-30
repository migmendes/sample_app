		require 'spec_helper'

describe "Static pages" do

	subject { page }
	
	describe "Home page" do
		before { visit root_path }
		
		it { should have_selector('h1', text: 'Sample App') }
		it { should have_selector('title', text: full_title('')) }
	end

	describe "Help page" do
		before { visit help_path }
	
		it { should have_selector('h1', text: 'ajuda') }
		it { should have_selector('title', text: full_title('Ajuda')) }
	end
	
	describe "About page" do
		before { visit about_path }
	
		it { should have_selector('h1', text: 'somos') }
		it { should have_selector('title', text: full_title('Sobre')) }
	end
	
	describe "Contact page" do
		before { visit contact_path }
		
		it { should have_selector('h1', text: 'contato') }
		it { should have_selector('title', text: full_title('Contato')) }
	end
end