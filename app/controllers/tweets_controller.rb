class TweetsController < ApplicationController
    
    def index
        @tweets = Tweet.all
    end
   
    def new
        @tweet = Tweet.new
    
    end
    
    def create
        Tweet.create(tweets_params)
        redirect_to tweets_path
    end
    
    def edit
        @tweet = Tweet.find(params[:id])
    end
        
    def update
        @tweet = Tweet.find(params[:id])
        @tweet.update(tweets_params)
        redirect_to tweets_path
    end
    
    def destroy
        @tweet = Tweet.find(params[:id])
        @tweet.destroy
        redirect_to tweets_path
    end
    
    
    private
        def tweets_params
            params.require(:tweet).permit(:content)
            
        end
    
    
end
