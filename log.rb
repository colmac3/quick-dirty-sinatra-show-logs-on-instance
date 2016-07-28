require 'sinatra'


 def print_log
    answer= IO.popen('ssh -i ~/.ssh/at.pem ubuntu@10.0.1.239 "cat /home/ubuntu/wfi-current/log/production.log"')
    answer
 end



get '/hi' do
  "Hello Colin!"
end

get '/log' do
  content_type :txt
  IO.popen('ssh -i ~/.ssh/at.pem ubuntu@10.0.1.239 "cat /home/ubuntu/wfi-current/log/production.log"')
end
get '/time' do
  content_type :txt
  IO.popen('ssh -i ~/.ssh/at.pem ubuntu@10.0.1.239 "date"')
end

get '/logs' do
  erb :logs
end

get '/logger' do
 logs=print_log
 stream do |out| 
    logs.each_line do |i| out << "#{i}" + "<br>" end
 end
end
