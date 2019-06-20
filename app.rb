require 'sinatra'
require 'sinatra/reloader'

get '/parent' do
  body File.read('parent.html')
end

get '/content' do
  headers \
    'X-Frame-Options' => ''
  body File.read('content_iframe.html')
end

get '/postmessaging_iframe' do
  headers \
    'X-Frame-Options' => 'ALLOW-FROM http://127.0.0.1:4001'
  body File.read('postmessaging_iframe.html')
end
