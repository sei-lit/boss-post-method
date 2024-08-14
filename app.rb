require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?

# ここにコードを書こう

counter = 0

get "/" do
    @counter = counter
    erb :index
end

post "/increment" do
    counter += 1
    puts "Counterに1足したよ"
    redirect "/"
end

post "/decrement" do
    counter -= 1
    puts "Counterから1引いたよ"
    redirect "/"
end