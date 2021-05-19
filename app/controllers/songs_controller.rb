class SongsController < ApplicationController
    def show 
        @song = Song.find(params[:id])
        #binding.pry
    end

    def index 
        @songs = Song.all 
    end 

    def new 
        @song = Song.new
    end

    def create 
        @song = Song.create(name: params[:name], artist_id: params[:artist_id], genre_id: params[:genre_id])
        redirect_to genres_path
    end

    def edit 
        @song = Song.find(params[:id])
    end 

    def update 

    end
end