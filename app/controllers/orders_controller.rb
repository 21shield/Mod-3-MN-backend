class OrdersController < ApplicationController

    def index
        orders = Order.all
        render json: orders
    end

    def create
        order = Order.create(orderParams)
        render json: order
    end

    def show
        order = Order.find(params[:id])
        render json: order
    end

    # def addToOrder
    #     byebug
    #     order = Order.find(params[:id])
    # end

    def orderParams
        params.permit(:number, :user_id)
    end
    
end
