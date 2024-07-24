class TweetsController < ApplicationController

  before_action :set_q, only: [:index, :search, :kyounoissyu]
def index
      @tweets = Tweet.all
end
def ichiran
  @tweets = Tweet.all
end





    def link
    end
    def new
        @tweet = Tweet.new
      end
    def create
      tweet = Tweet.new(tweet_params)
      if tweet.save
        redirect_to :action => "index"
      else
        redirect_to :action => "new"
      end
    end
    def show
      @tweet = Tweet.find(params[:id])
    end
    def edit
      @tweet = Tweet.find(params[:id])
    end

    def update
      tweet = Tweet.find(params[:id])
      if tweet.update(tweet_params)
        redirect_to :action => "show", :id => tweet.id
      else
        redirect_to :action => "new"
      end
    end
    def destroy
      tweet = Tweet.find(params[:id])
      tweet.destroy
      redirect_to action: :index
    end
    def search
      @results = @q.result
        @results_kisetsu = @results.where(ganbaru: nil)
        @results_ganbaru = @results.where(kisetsu: nil)
    end

    def top
      @tweet = Tweet.all
      @random = @tweet.where(ganbaru: nil, kisetsu: nil).order("RANDOM()")
    end

  

    private

    def set_q
      @q = Tweet.ransack(params[:q])

    end

    def set_q
      @q = Tweet.ransack(params[:q])
    @q.combinator = 'or'
    end

    def tweet_params
      params.require(:tweet).permit(:body,:waka,:gendai,:sakusya,:kisetsu,:ganbaru,:photo)
    end
  
end


  


