# Nome: Leonardo de Carvalho Freitas Padilha Aguilar Número USP: 9298295
#       Luís Felipe de Melo Costa Silva                          9297961

# Part 1

def sum arr
    return 0 if arr.length == 0
    arr.reduce(:+) 
end

def max_2_sum arr
    return 0 if arr.length == 0
    arr.max(2).reduce(:+)
end

def sum_to_n? arr, n
    arr.combination(2).map { |arr| arr.reduce(:+) == n }.include? true
end

# Part 2

def hello(name)
    "Hello, " + name
end

def starts_with_consonant? s
    /\A[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]/ === s
end

def binary_multiple_of_4? s
    /((\A[01]*00\z)|(\A0\z))/ === s
end

# Part 3

class BookInStock
    # Constructor
    def initialize(isbn, price)
        @isbn = isbn
        @price = price
        raise ArgumentError if @isbn.empty? || @price <= 0    
    end
    # Getter
    def isbn ; @isbn ; end
    # Setter
    def isbn=(new_isbn) ; @isbn = new_isbn ; end
    # Getter
    def price ; @price ; end
    # Setter
    def price=(new_price) ; @price = new_price ; end
    def price_as_string
        p = (@price*100).floor
        str = '$' + (p/100).to_s + '.' + ((p%100)/10).to_s + (p%10).to_s
    end
end
