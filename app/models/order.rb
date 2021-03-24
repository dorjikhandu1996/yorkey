class Order < ApplicationRecord
    has_many :order_items
    has_many :discounts
    before_save :set_subtotal
    # before_save :set_discount_amount

    def subtotal
        order_items.collect{|order_item| order_item.valid? ? order_item.product.cost*order_item.quantity: 0}.sum
        # order_items.collect{|order_item| order_item.valid? ? order_item.product.cost*order_item.quantity - order_item.discount_amount: 0}.sum

    end



    private
    def set_subtotal
        self[:subtotal] = subtotal
    end

    # def set_discount_amount
    #     self[:discount_amount] = discount_amount
    # end


end
