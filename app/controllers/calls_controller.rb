class CallsController < ApplicationController
  def answer
    return render plain: 'ok' unless params[:Event] == 'StartApp'

    @from = params[:From]
    Call.create! caller: @from, call_uuid: params[:CallUUID]
    @users = User.all
  end

  def log
    call = Call.find_by_call_uuid params[:CallUUID]

    if params[:DialAction] == 'answer'
      to = User.find_by_sip params[:DialBLegTo]
      call.update! user: to

    elsif params[:DialAction] == 'hangup' && params[:DialBLegHangupCause] == 'NORMAL_CLEARING'
      pickup_time = params[:AnswerTime].to_time - params[:StartTime].to_time
      call.update! duration: params[:DialBLegDuration], pickup_time: pickup_time
    end

    render plain: 'ok'
  end

  def voicemail
    call = Call.find_by_call_uuid params[:CallUUID]
    call.update! voicemail: params[:RecordFile], duration: params[:RecordingDuration]

    render plain: 'ok'
  end
end
