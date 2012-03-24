class MicropostsController < ApplicationController

before_filter :authenticate
before_filter :authorized_user, :only => :destroy

    def create
        @micropost = current_user.microposts.build(params[:micropost])
            if @micropost.save
                redirect_to root_path, :flash => { :success => "Post Saved" }
            else
                
                @feed_items = []                        
                render 'pages/home'
                
        end
end

def destroy



    end
    
    
    
    def authorized_user
        @micropost = Microposts.find(params[:id])
        redirect_to root_path unless current_user?(@micropost.user)
        end
    
    
    
    
end