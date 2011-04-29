require 'spec_helper'

describe "recipes/new.html.erb" do
  before(:each) do
    assign(:recipe, stub_model(Recipe,
      :title => "MyString",
      :description => "MyString",
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new recipe form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => recipes_path, :method => "post" do
      assert_select "input#recipe_title", :name => "recipe[title]"
      assert_select "input#recipe_description", :name => "recipe[description]"
      assert_select "textarea#recipe_content", :name => "recipe[content]"
    end
  end
end
