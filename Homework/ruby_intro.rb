# Nome: Luís Felipe de Melo Costa Silva
# Número USP: 9297961

# Part 1

def sum arr
    sum = 0
    arr.each { |pos| sum += pos }
    sum
end

def max_2_sum arr
    if arr.length == 0
        0
    elsif arr.length == 1
        arr[0]
    else 
        larg, seclarg = [arr[0], arr[1]].min, [arr[0], arr[1]].max
        for i in 2..arr.length-1
            if arr[i] > larg
                seclarg = larg
                larg = arr[i]
            elsif arr[i] > seclarg
                seclarg = arr[i]
            end
        end
        larg+seclarg
    end
end

def sum_to_n? arr, n
    for i in 0..arr.length-2
        for j in i+1..arr.length-1
            if arr[i]+arr[j] == n
                return true
            end
        end
    end
    return false
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
        if @isbn.empty? || @price <= 0
            raise ArgumentError
        end
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
