class CallsController < ApplicationController
  before_action :find_call, only: [:log, :voicemail]

  # When a call comes in, we create a Call log entry and we render the XML file
  # describing how to handle the call
  def answer
    return render nothing: true unless params[:Event] == 'StartApp'

    @from = params[:From]
    Call.create! caller: @from, call_uuid: params[:CallUUID]
    @users = User.all
  end

  # This route can be triggered by several events during a call, and we act for
  # only a few of them
  def log
    # When someone actually picks up the call
    if params[:DialAction] == 'answer'
      call.update! user: User.find_by_sip(params[:DialBLegTo])
    # When the call is over, we log the call duration and the time it took to
    # pick up the call
    elsif params[:DialAction] == 'hangup' &&
          params[:DialBLegHangupCause] == 'NORMAL_CLEARING'
      pickup_time = params[:AnswerTime].to_time - params[:StartTime].to_time
      call.update! duration: params[:DialBLegDuration], pickup_time: pickup_time
    end
    render nothing: true
  end

  # When no one answers the call and the voicemail has been recorded, we save
  # the url of the voicemail audio file
  def voicemail
    @call.update! voicemail: params[:RecordFile],
                  duration: params[:RecordingDuration]
    render nothing: true
  end

  private

  def find_call
    @call = Call.find_by_call_uuid params[:CallUUID]
  end
end
