class ProductsController < ApplicationController

    def index 
        session[:cart] ||= []
    end

    def add 
        session[:cart] = session[:cart] ||= []
        session[:cart] << (params["product"])
        redirect_to :products
    end


end
