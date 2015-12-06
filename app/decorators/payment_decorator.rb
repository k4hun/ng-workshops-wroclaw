class PaymentDecorator < BaseDecorator
  def payment_date
    created_at.strftime('%Y-%m-%d')
  end
end
