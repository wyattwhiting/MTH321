function outMatrix = twin_primes_between(a, b)
    outMatrix = [];
    
    if (b - a) < 2 
        return
    end
    
    for i = a:(b-2)
        if isprime(i) && isprime(i + 2)
            outMatrix = [outMatrix; i i+2];
        end
    end    
end

