get "/drink_sessions/:drink_session_id/drinks" do
  erb :'/drinks/index'
end

get 'drink_sessions/:drink_session_id/drinks/new' do
  erb:'drinks/new'
end

post "/drink_sessions/:drink_session_id/drinks" do
  @drink_session = DrinkSession.find(params[:drink_session_id])
  drink = @drink_session.Drink.new(name_of_drink: params[:name_of_drink], alcohol: params[:alcohol])
  if current_user
    drink.user = current_user
    drink.save
  end
  redirect "/drink_sessions/#{@drink_session.id}"
end

get "/drink_sessions/:drink_session_id/drinks/:id" do

end
