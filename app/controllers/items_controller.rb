class ItemsController < ApplicationController
    def index
      items = Item.include (:user)
      render json: items, include: :user
    end
  end
  