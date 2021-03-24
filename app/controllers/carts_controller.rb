class CartsController < ApplicationController

  def show
    @order_items = current_order.order_items
  end

  # def unit_cost
  #   if !discounts.discount_amount.nil?
  #       product.cost - discounts.discount_amount
  #   else
  #       (product.cost *(discounts.discount_percent/100)) + product.cost
  #   end
  # end

end
