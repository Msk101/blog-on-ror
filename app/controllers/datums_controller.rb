class DatumsController < ApplicationController
    before_action :set_data, only: %i[ show edit update destroy ]

    def index
        @datums = Datum.all
    end

    def show 
       
    end

    def new
        @datum = Datum.new
        # render plain: @datum.inspect
    end

    def create 
        @datum = Datum.new(data_params)
        if @datum.save
            flash[:notice] = "Article was created successfully."
            redirect_to @datum
        else
            render 'new'
        end
    end

    def edit 
        
    end

    def update 
        if @datum.update(data_params)
            flash[:notice] = "Article was updated successfully."
            redirect_to @datum
        else
            render 'edit'
        end
    end

    def destroy 
        @datum.destroy
        redirect_to datums_path
    end

    private

    def set_data 
        @datum = Datum.find(params[:id])
    end

    def data_params 
        params.require(:datum).permit(:name, :description)
    end


end