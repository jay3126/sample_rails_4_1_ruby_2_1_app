require 'spec_helper'

describe "posts/edit" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :post => "MyText",
      :created_by => 1
    ))
  end

  it "renders the edit post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", post_path(@post), "post" do
      assert_select "textarea#post_post[name=?]", "post[post]"
      assert_select "input#post_created_by[name=?]", "post[created_by]"
    end
  end
end
