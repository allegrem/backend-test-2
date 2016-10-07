xml.Response do
  xml.Dial callerId: @from, callbackUrl: log_call_url, timeout: 10 do
    @user_numbers.each do |user_number|
      xml.User user_number.sip_endpoint
    end
  end

  xml.Speak 'Please leave a message after the beep. Press the star key when done.'
  xml.Record action: save_voicemail_url, finishOnKey: '*'
  xml.Speak 'Recording not received.'
end
