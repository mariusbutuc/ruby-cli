#!/usr/bin/env ruby

database = ARGV.shift
username = ARGV.shift
password = ARGV.shift
end_of_iter = ARGV.shift

databases.each do |name, config|
  if end_of_iter.nil?
    backup_file = databases + Time.now.strftime('%Y%m%d')
  else
    backup_file = databases + end_of_iter
  end
  puts "creates #{backup_file}.sql.gz"
  # mysqldump = "mysqldump -u#{username} -p#{password} #{database} > #{backup_file}.sql"
  # `gzip #{backup_file}.sql`
end