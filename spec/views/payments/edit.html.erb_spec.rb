require 'spec_helper'

describe "payments/edit" do
  before(:each) do
    @payment = assign(:payment, stub_model(Payment,
      :code => "MyString",
      :amount => 1,
      :user_id => 1
    ))
  end

  it "renders the edit payment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => payments_path(@payment), :method => "post" do
      assert_select "input#payment_code", :name => "payment[code]"
      assert_select "input#payment_amount", :name => "payment[amount]"
      assert_select "input#payment_user_id", :name => "payment[user_id]"
    end
  end
end
