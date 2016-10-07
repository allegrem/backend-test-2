class CallsController < ApplicationController
  def answer
    @from = params[:From]
    @users = User.all
  end

  def hangup
    render plain: 'hello world'
  end
end
