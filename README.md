So, you have developers constantly asking for log files? <br>

1.) Set up a temp t2.micro besure to put a public IP on it. <br>
2.) and install sinatra. I just do it all in the ec2-user dir. I mean this is quick and dirty and wont be around long, yeah sure you have heard that before<br>
3.) be sure to start in prod mode... RACK_ENV='production' ruby log.rb <br>
4.) http://52.42.191.60:4567/logger <br>
5.) http://52.42.191.60:4567/time   <br>
