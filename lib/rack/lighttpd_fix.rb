module Rack
  class LighttpdFix
    def initialize(app)
      @app = app
    end     

    def call(env)
      env['PATH_INFO'] = env['REQUEST_URI'].split('?', 2).first
      @app.call(env)
    end     
  end
end