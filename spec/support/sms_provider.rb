RSpec.configure do |c|
  c.before(:each) do
    SmsProvider.messages.clear
  end
end
