xml.Response do
  xml.Dial callerId: @from, callbackUrl: log_call_url do
    @users.each do |user|
      xml.User user.sip
    end
  end
end
