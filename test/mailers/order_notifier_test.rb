require 'test_helper'

class OrderNotifierTest < ActionMailer::TestCase
  test "received" do
    mail = OrderNotifier.received(orders(:one))
    assert_equal "Your Lazymart order confirmation", mail.subject
    assert_equal ["mail2thomaskim@gmail.com"], mail.to
    assert_equal ["info@lazymart.ca"], mail.from
    
  end

  test "shipped" do
    mail = OrderNotifier.shipped(orders(:one))
    assert_equal "Your order shipped", mail.subject
     assert_equal ["mail2thomaskim@gmail.com"], mail.to
    assert_equal ["info@lazymart.ca"], mail.from
  end

end
