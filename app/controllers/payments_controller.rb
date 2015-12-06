class PaymentsController < ApplicationController
  expose(:payments) { Payment.order('created_at DESC') }
  expose(:payment, attributes: :payment_params)

  before_action :authenticate_user!

  def create
    if payment.save
      redirect_to payments_path, notice: I18n.t('shared.created', resource: 'Payment')
    else
      render :new
    end
  end

  private

  def payment_params
    params.require(:payment).permit(:created_at, :student_id)
  end
end
