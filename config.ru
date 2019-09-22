# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

require 'uri'
require 'rack-proxy'

class WebAppsProxy < Rack::Proxy
  def rewrite_env(env)
    web_app = WebApplication.find_by(
      path: URI.parse(env['REQUEST_PATH']).path
    )

    if web_app
      new_url = URI.parse(web_app.url)
      env["HTTP_HOST"] = "#{new_url.host}:#{new_url.port}"
    end

    env
  end
end

run WebAppsProxy.new
