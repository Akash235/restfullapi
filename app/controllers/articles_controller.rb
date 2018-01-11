class ArticlesController < ApplicationController


  before_action :authenticate_user

  def index

     byebug
  	
  

    render json: Article.all



  end

  def create

      byebug

  		

  	

  	

  
  end 

end
