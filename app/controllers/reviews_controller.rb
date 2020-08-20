class ReviewsController < ApplicationController

    def index
        reviews = Review.all
        render json: reviews
    end
    
    def create
        review = Review.create(reviewParams)
        render json: review
    end

    def reviewParams
        params.permit(:content, :user_id, :item_id)
    end

end
