#!/usr/bin/env ruby

new_task = ARGV.shift

File.open('toxdo.txt', 'a') do |file|
  file.puts "#{new_task},#{Time.now}"
  puts "Task added."
end