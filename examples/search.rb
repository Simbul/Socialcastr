$:.unshift('./lib')
require 'rubygems'
require 'socialcastr'

NEEDLE="welcome"
Socialcastr.configuration do |c|
  c.config_file = File.join(File.dirname(__FILE__), 'socialcast.yml')
end


puts "Searching for #{NEEDLE}..."
messages = Socialcastr::Message.search(:q => NEEDLE)
puts "found #{messages.size} results:"

messages.each do |message|
  puts "#{message.user.name}:\n\t#{message.title}\n\t#{message.body}"
end


