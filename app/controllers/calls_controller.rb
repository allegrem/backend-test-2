class CallsController < ApplicationController
  def answer
    @from = params[:From]
    @to = User.first.sip
  end

  def hangup
    render plain: 'hello world'
  end
end
