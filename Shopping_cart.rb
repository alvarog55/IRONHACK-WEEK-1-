class Product
    attr_reader :name, :price 
    def initialize(name, price)
        @name = name
        @price = price
    end
end

class Shoppingcart
    attr_reader :cart
    def initialize
        @cart_string = [ ]
        @cart_hash = { }
        @total = 0
    end

    def add_to_cart(product)
        @cart_string.push(product)
    end

    def print_cart_products
        string_to_hash
        puts @cart_hash
    end

    def print_total_price
        calculate_total
        puts @total
    end

    def calculate_total
        @cart_string.each do |item|
        @total += item.price
        end
    end

    def string_to_hash
        @cart_string.each do |item|
        @cart_hash[item.name] = [item.price]
        end
    end
end

fruteria_Manoli = Shoppingcart.new

apples = Product.new("apples",10)
oranges = Product.new("oranges",5)
grapes = Product.new("grapes",15)
bananas = Product.new("bananas",20)
watermelons = Product.new("watermelons",50)


fruteria_Manoli.add_to_cart(apples)
fruteria_Manoli.add_to_cart(oranges)
fruteria_Manoli.add_to_cart(grapes)
fruteria_Manoli.add_to_cart(bananas)
fruteria_Manoli.add_to_cart(watermelons)


fruteria_Manoli.print_total_price