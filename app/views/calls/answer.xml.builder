xml.Response do
  xml.Dial callerId: @from do
    @users.each do |user|
      xml.User user.sip
    end
  end
end
