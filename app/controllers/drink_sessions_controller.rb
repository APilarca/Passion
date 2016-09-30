get '/drink_sessions' do
  @drink_sessions = DrinkSession.all
  erb :'drink_sessions/index'
end

get '/drink_sessions/new' do
  # form for making new session
  erb:'/drink_sessions/new'
end

post '/drink_sessions' do
  # create new session
  if current_user
    drink_session = DrinkSession.create(title: params[:title], user_id: session[:user_id])
  end
  redirect "/drink_sessions/#{drink_session.id}"
end

get '/drink_sessions/:id' do
  @drink_session = DrinkSession.find(params[:id])
  erb :'/drink_sessions/show'
end

get 'drink_sessions/:id/edit' do
  erb :'drink_sessions/edit'
end

delete 'drink_sessions/:id' do
  # delete
end
