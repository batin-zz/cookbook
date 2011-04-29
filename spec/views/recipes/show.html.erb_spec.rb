require 'spec_helper'

describe "recipes/show.html.erb" do
  before(:each) do
    @recipe = assign(:recipe, stub_model(Recipe,
      :title => "Title",
      :description => "Description",
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
