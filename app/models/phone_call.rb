# frozen_string_literal: true

class PhoneCall < ApplicationRecord
  before_save :set_call_price

  ATTRIBUTES = %i[
    called
    caller
    start_at
    end_at
    call_price_cents
  ].freeze

  private

  def set_call_price
    return self.call_price_cents = 0 if start_at.nil?

    # Tarifa reduzida (0:00 - 5:59) : R$ 0,20 + R$ 0,00 por minuto completo
    return self.call_price_cents = 20 if start_at.hour <= 6

    # Tarifa padrão ( 6:00 - 23:59) : R$ 0,40 + R$0,11 por minuto completo.
    self.call_price_cents = 40 + duration_in_minutes * 11
  end

  def duration_in_minutes
    (end_at - start_at).div 60
  end
end
