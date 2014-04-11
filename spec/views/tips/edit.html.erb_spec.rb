require 'spec_helper'

describe "tips/edit" do
  before(:each) do
    @tip = assign(:tip, stub_model(Tip,
      :news_tip => "MyText",
      :source => "MyString",
      :reporter_following_up => "MyString",
      :notes => "MyText",
      :status => "MyString"
    ))
  end

  it "renders the edit tip form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tip_path(@tip), "post" do
      assert_select "textarea#tip_news_tip[name=?]", "tip[news_tip]"
      assert_select "input#tip_source[name=?]", "tip[source]"
      assert_select "input#tip_reporter_following_up[name=?]", "tip[reporter_following_up]"
      assert_select "textarea#tip_notes[name=?]", "tip[notes]"
      assert_select "input#tip_status[name=?]", "tip[status]"
    end
  end
end
