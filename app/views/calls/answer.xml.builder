xml.Response do
  xml.Dial callerId: @from do
    xml.User @to
  end
end
