require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get "/" do
      erb :root
    end

    get "/new" do
      erb :'pirates/new'
    end

    post "/pirates" do
      params["pirate"]["ships"].each do |ship_data|
        Ship.new(name: ship_data["name"], type: ship_data["type"], booty: ship_data["booty"])
      end

      @pirate = Pirate.new(name: params["pirate"]["name"], height: params["pirate"]["height"], weight: params["pirate"]["weight"])

      @ships = Ship.all

      erb :'pirates/show'
    end

  end
end
