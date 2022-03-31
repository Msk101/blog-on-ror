class PagesController < ApplicationController
    def home
        redirect_to datums_path if logged_in? 
    end
    
    def about 
    end
    def surprise 
    end
end
