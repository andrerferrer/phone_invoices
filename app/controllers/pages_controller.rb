class PagesController < ApplicationController
  def home
    @phone_call = PhoneCall.new
  end
end
