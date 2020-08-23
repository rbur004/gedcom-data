#!/usr/local/bin/ruby
require 'gedcom'

["burrowes.ged"].each do |source|
  puts "parse #{source}"
  g = Gedcom.file(__dir__ + '/' + source, "r:ASCII-8BIT") #OK with LF line endings.
  g.transmissions[0].summary
  puts
  puts "Self check of Gedcom consistency"
  g.transmissions[0].self_check #validate the gedcom file just loaded, printing errors found.
  puts 
end

=begin
#print the parsed file to see if it matches the source file.
#Note CONT and CONC breaks may end up in different places
#Note Order of TAGS at the same level may be different
#Note User TAGS are output as Notes.
File.open( "/tmp/burrowes.out", "w:ASCII-8BIT") do |file|
  file.print g.transmissions[0].to_gedcom
end
puts "\nComplete"
=end
