xml.Response do
  xml.Dial callerId: @from, callbackUrl: log_call_url, timeout: 10, action: end_dial_url do
    @user_numbers.each do |user_number|
      xml.User user_number.sip_endpoint
    end
  end
end
