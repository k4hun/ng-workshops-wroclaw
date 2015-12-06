require 'rails_helper'

describe PaymentDecorator do
  let(:payment) { create :payment, created_at: '2015-12-03 21:41:33 +0100', student_id: 1 }

  describe 'payment_date' do
    subject { payment.decorate.payment_date }
    it { is_expected.to eq '2015-12-03' }
  end
end
