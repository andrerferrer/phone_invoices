# frozen_string_literal: true

class PhoneCall < ApplicationRecord
  ATTRIBUTES = %i[
    called
    caller
    start_at
    end_at
    call_price
  ].freeze
end
