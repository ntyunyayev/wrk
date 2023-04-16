request_big = function()
    return wrk.format("GET", "/10000000")
end

request_small = function()
    return wrk.format("GET", "/1000")
end

requests = {}
requests[0] = request_big
requests[1] = request_small


request = function()
    return requests[math.random(0, 1)]()
end

