class OrdersController < ApplicationController
    def new
        @discount = Discount.all
    end
end
