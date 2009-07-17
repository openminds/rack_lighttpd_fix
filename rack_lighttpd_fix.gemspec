Gem::Specification.new do |s|
  s.name    = 'rack_lighttpd_fix'
  s.version = '0.1.0'
  s.date    = '2009-07-17'
  
  s.summary = "Lighttpd fix to set correct PATH_INFO"
  s.description = "Rack::Cache uses PATH_INFO to calculate the cache-url. Lighttpd sets this wrong. This Rack middleware fixes that"
  
  s.authors  = ['Jan De Poorter (Openminds)']
  s.email    = 'code@openminds.be'
  s.homepage = 'http://github.com/DefV/rack_lighttpd_fix/tree/master'
  
  s.has_rdoc = false
  
  s.files = %w(README.rdoc lib/rack/lighttpd_fix.rb test/test_lighttpd_fix.rb)
end
