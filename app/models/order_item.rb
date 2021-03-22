class OrderItem < ApplicationRecord
    belongs_to :order
    belongs_to :product

    before_save :set_unit_cost
    before_save :set_total

    def unit_cost
        if persisted?
            self[:unit_cost]
        else
            product.cost
        end
    end

    def total
        product.cost* quantity
    end

    private
    
    def set_unit_cost
        self[:unit_cost] = unit_cost
    end

    def set_total
        self[:total] = total * quantity
    end

end
