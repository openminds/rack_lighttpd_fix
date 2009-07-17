require "rack/lighttpd_fix"

class TestLibraryFileName < Test::Unit::TestCase
  def setup
    @app = lambda { |env| [200, {'Content-Type' => 'text/plain'}, "Hello, World!"] }
  end
  
  def test_root_request
    env = {
      'REQUEST_URI' => '/'
    }
    
    response = Rack::LighttpdFix.new(@app).call(env)
    assert_equal '/', env['PATH_INFO']
  end
  
  def test_request_with_GET_params
    env = {
      'REQUEST_URI' => '/foo?bar=1'
    }
    
    response = Rack::LighttpdFix.new(@app).call(env)
    assert_equal '/foo', env['PATH_INFO']
  end
end