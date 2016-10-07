xml.Response do
  xml.Dial callerId: @from, callbackUrl: log_call_url, timeout: 30 do
    @users.each do |user|
      xml.User user.sip
    end
  end

  xml.Speak 'Please leave a message after the beep. Press the star key when done.'
  xml.Record action: save_voicemail_url, finishOnKey: '*'
  xml.Speak 'Recording not received.'
end
