class OrderItem < ApplicationRecord
    belongs_to :order
    belongs_to :product
    has_many :discounts

    before_save :set_unit_cost
    before_save :set_total
    # before_save :set_discount_amount
    
    
    
    # def discount_amount
    #    Discount.all.map{|d|[d.discount_amount, d.id]}
    # end
   
    def unit_cost
        # if !discounts.discount_amount.nil?
        #     product.cost - discounts.discount_amount
        # else
        #     (product.cost *(discounts.discount_percent/100)) + product.cost
        if persisted?
            self[:unit_cost]
        else
            product.cost 
         end
    end

    def total
        product.cost * quantity
    end

    private
    
    def set_unit_cost
        self[:unit_cost] = unit_cost
    end

    def set_total
        self[:total] = total * quantity
    end

    

end
