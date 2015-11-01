class NumbersController < ApplicationController
  def index
    hash = Rails.cache.fetch('hash') do
      {
        number: rand(1_000_000),
        generated: Time.now
      }
    end

    render json: hash
  end
end
