class CallsController < ApplicationController
  def answer
    @caller_id = params[:From]
  end

  def hangup
    render plain: 'hello world'
  end
end
