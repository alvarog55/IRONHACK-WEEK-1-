if output == :screen
  puts text
elsif output == :logfile
  IO.write("log.log", text)
elsif output == :message_queue
  Queue.put(text)
elsif output == :json_endpoint
  HTTP.post(text)
elsif output == :logstash
  Logstash.add(text)
elsif output == :logwatcher
  LogWatch.new.post(text)
elsif output == :logfile
  IO.write("log.log", text)
Add Comment
end

class WhatToDo
  def initialize(output)
  @output = output
  what_to_do
  end
end

class Screen
  def do_screen
    puts text
  end
end
class Logfile
  def Logfile_do
  IO.write("log.log", text)
  end
end

class Message_queue
  def write_message
  Queue.put(text)
  end
end

class Json_endpoint
  def end_point
  HTTP.post(text)
  end
end
class Logstash
  def Logstach_do
    LogWatch.new.post(text)
  end
end
class Logwatcher
  def watch_log
  LogWatch.new.post(text)
  end
end

  def what_to_do
    case @output
    when :screen
    do_screen
    when :logfile
    Logfile_do
    when :message_queue
    write_message
    when :Json_endpoint
    end_point
    when :logstash
    Logstach_do
    when :logwatcher
    watch_log
   
    end
  end

