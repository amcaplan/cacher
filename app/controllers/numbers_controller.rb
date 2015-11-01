class NumbersController < ApplicationController
  def index
    number = Rails.cache.fetch('number') do
      rand(1_000_000)
    end

    render json: number
  end
end
