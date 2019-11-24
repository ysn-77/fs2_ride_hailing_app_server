class PingController < ApplicationController
  def index
    render json: {
      pong: params
    }
  end
end
