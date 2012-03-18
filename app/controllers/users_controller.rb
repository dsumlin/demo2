class UsersController < ApplicationController
  
    def new
        
        @user = User.new
        @title = "Sign up"
        end
    
    def show
        @user = User.find(params[:id])
        @title = @user.name
    
        end
    
    def create
        @user = User.new(params[:user])
        @user.save
        @title = "Sign Up"
        render 'new'
        end
    
    end