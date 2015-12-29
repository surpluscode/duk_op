# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
set :output, '/var/vhosts/dukop/det_sker/log/cron.log'

every :day, :at => '10:20pm' do
  fname = Time.now.strftime('%d_%m_%Y_dump.sql')
  command "pg_dump -U dukop dukop -f #{fname}"
end
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
