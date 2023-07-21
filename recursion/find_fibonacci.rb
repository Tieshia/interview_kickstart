def find_fibonacci(n)
   addseq(n, 0, 1) 
end

def addseq(n, b1, b2)
    # puts "in addseq - n: #{n}, b1: #{b1}, b2: #{b2}"
    if n == 0
        return b1
    else
        return addseq(n-1, b2, b1 + b2)
    end
end

puts find_fibonacci(2)