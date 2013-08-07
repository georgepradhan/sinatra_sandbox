get '/' do
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"
  erb :index
end

get '/cool_url' do
  puts "[LOG] Getting /cool_url"
  puts "[LOG] Params: #{params.inspect}"

  @radio1 = params[:radio1] || "off"
  @radio2 = params[:radio2] || "off"
  @value = params[:get_input]
  @textbox = params[:textbox]
  erb :get_cool_url
end

post '/cool_url' do
  puts "[LOG] Posting to /cool_url"
  puts "[LOG] Params: #{params.inspect}"

  @radio3 = params[:radio3] || "off"
  @radio4 = params[:radio4] || "off"
  @value = params[:post_input]
  @textbox = params[:textbox]
  erb :post_cool_url
end