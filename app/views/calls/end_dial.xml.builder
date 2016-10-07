xml.Response do
  xml.Speak 'Please leave a message after the beep. Press the star key when done.'
  xml.Record action: save_voicemail_url, finishOnKey: '*'
  xml.Speak 'Recording not received.'
end
