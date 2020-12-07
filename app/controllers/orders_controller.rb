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

    def destroy
       order = Order.find(params[:id])
       order.destroy
       render json: order
    end

    def orderParams
        params.permit(:number, :user_id)
    end
    
end
