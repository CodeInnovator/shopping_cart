class OrderNotifier < ApplicationMailer
  default from: 'Thomas Kim <info@lazymart.ca>'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
  def received(order)
    @order = order

    mail to: order.email, subject: 'Your Lazymart order confirmation'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
  def shipped(order)
    @order = order

    mail to: order.email, subject: 'Your order shipped'
  end

  def admin_mailer(order)
    @order = order
    mail to: 'mail2kibum@me.com', subject: 'Customer order confirmation'
  end

end
