require 'rails_helper'

RSpec.describe "exercises/index", type: :view do
  before(:each) do
    assign(:exercises, [
      Exercise.create!(
        :name => "Name",
        :calories_burned => 1
      ),
      Exercise.create!(
        :name => "Name",
        :calories_burned => 1
      )
    ])
  end

  it "renders a list of exercises" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
