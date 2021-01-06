class GuidesController < ApplicationController
    def index
    end
  
    def new
      # @guides = Guide.new
    end
  
    def create
      @guides = Guide.new(list_params)
      if @guide.save
         redirect_to root_path
       else
         render :new
     end
   end
   
  end
