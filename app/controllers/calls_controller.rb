class CallsController < ApplicationController
  def answer
    @from = params[:From]
    @users = User.all
  end

  def hangup
    render plain: 'hello world'
  end

  def log
    if params[:DialAction] == 'answer'
      @to = User.find_by_sip params[:DialBLegTo]
      Call.create! caller: params[:DialBLegFrom], user: @to
    end

    render plain: 'ok'
  end
end
