get '/' do
  erb :index
end

post '/urls' do
  @address = params[:address]
  @new_address = Url.create(address: @address, click_count: 0)
  erb :index
end

# e.g., /q6bda
get '/:short_url' do
  @short = params[:short_url]
  @match = Url.find_by_short_address(@short)
  erb :long_address

end
