require 'pry'
require 'icalendar'

# Open a file or pass a string to the parser
# cal_file = File.open("test.rb")
cal_file = File.open("app/models/cal.ics")

# Parser returns an array of calendars because a single file
# can have multiple calendars.
cals = Icalendar.parse(cal_file)
cal = cals.first

# Now you can access the cal object in just the same way I created it
event = cal.events.first

binding.pry
