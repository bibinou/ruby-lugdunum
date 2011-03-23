require "rubygems"
require "bundler/setup"
Bundler.setup(:default)

require 'rack-rewrite'

use Rack::Static, :urls => ['/javascripts'], :root => "public"
use Rack::Static, :urls => ['/stylesheets'], :root => "public"
use Rack::Static, :urls => ['/images'], :root => "public"
use Rack::ETag
use Rack::Rewrite do
  rewrite '/', '/index.html'
end
run Rack::Directory.new('public')


