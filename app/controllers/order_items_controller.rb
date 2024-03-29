class OrderItemsController < ApplicationController

    def show
        order_item = OrderItem.find(params[:id])
        render json: order_item
    end

    def index
        order_items = OrderItem.all
        render json: order_items
    end

    def create  
        order_item = OrderItem.create(order_item_params)
        render json: order_item
    end

    def destroy
        order_item = OrderItem.find(params[:id])
        order_item.destroy
        render json: order_item
    end

    def order_item_params
        params.permit(:order_id, :item_id)
    end
end
