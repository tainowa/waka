class ToukousController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit]
  def index
    @toukous = Toukou.all
  end
  
  
  def new
    @toukou = Toukou.new
  end
     
    
      def create
        toukou = Toukou.new(toukou_params)
        toukou.user_id = current_user.id
        if toukou.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end

      def show
        @toukou = Toukou.find(params[:id])
      end
    

      def edit
        @toukou = Toukou.find(params[:id])
      end 

      def update
        toukou = Toukou.find(params[:id])
        if toukou.update(toukou_params)
          redirect_to :action => "show", :id => toukou.id
        else
          redirect_to :action => "new"
        end
      end
      def destroy
        toukou = Toukou.find(params[:id])
        toukou.destroy
        redirect_to action: :index
      end
     

      def link
      end



      private
      def toukou_params
        params.require(:toukou).permit(:body, :title)
      end
end
