class CallsController < ApplicationController
  def answer
    @from = params[:From]
    Call.create! caller: @from, call_uuid: params[:CallUUID]
    @users = User.all
  end

  def hangup
    render plain: 'hello world'
  end

  def log
    @call = Call.find_by_call_uuid params[:CallUUID]

    if params[:DialAction] == 'answer'
      @to = User.find_by_sip params[:DialBLegTo]
      @call.update! user: @to
    end

    render plain: 'ok'
  end
end
