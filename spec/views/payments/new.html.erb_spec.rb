require 'spec_helper'

describe "payments/new" do
  before(:each) do
    assign(:payment, stub_model(Payment,
      :code => "MyString",
      :amount => 1,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new payment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => payments_path, :method => "post" do
      assert_select "input#payment_code", :name => "payment[code]"
      assert_select "input#payment_amount", :name => "payment[amount]"
      assert_select "input#payment_user_id", :name => "payment[user_id]"
    end
  end
end
