get '/' do
  redirect '/drink_session'
end

get 'drink_session' do
  erb :'drink_session/index'
end
