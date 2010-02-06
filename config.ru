require 'toto'

# Rack config
use Rack::Static, :urls => ['/css', '/js', '/images', '/favicon.ico'], :root => 'public'
use Rack::CommonLogger

# Run application
toto = Toto::Server.new do
  set :author, "Nicolás Sanguinetti"
  set :disqus, "readme"
  set :date, lambda {|now| now.strftime("%B #{now.day.ordinal}, %Y") }
end

run toto

