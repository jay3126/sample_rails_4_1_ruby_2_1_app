require 'spec_helper'

describe "posts/new" do
  before(:each) do
    assign(:post, stub_model(Post,
      :post => "MyText",
      :created_by => 1
    ).as_new_record)
  end

  it "renders new post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", posts_path, "post" do
      assert_select "textarea#post_post[name=?]", "post[post]"
      assert_select "input#post_created_by[name=?]", "post[created_by]"
    end
  end
end
