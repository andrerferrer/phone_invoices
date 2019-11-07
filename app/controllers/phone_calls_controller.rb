# frozen_string_literal: true

class PhoneCallsController < ApplicationController
  def index
    # TODO: solve params are correct and exist
    attrs = %i[
      phone_number
      period_start
      period_end
    ]

    set_phone_calls
    # return 1 if caller.nil?

    @start_at = Time.parse(params[:period_start])
    @end_at = Time.parse(params[:period_end])
    @total_price = @phone_calls.pluck(:call_price_cents).map(&:to_i).sum.fdiv(100)
  end

  private

  def set_phone_calls
    @phone_calls = PhoneCall.where(caller: params[:phone_number])
                            .where('start_at > ?', params[:period_start])
                            .where('end_at < ?', params[:period_end])
  end
end
