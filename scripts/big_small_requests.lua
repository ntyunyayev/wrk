request_big = function()
    return wrk.format("GET", "/10000")
end

request_small = function()
    return wrk.format("GET", "/1000")
end

requests = {}
requests[0] = request_big
requests[1] = request_small
requests[2] = request_small
requests[3] = request_small
requests[4] = request_small
requests[5] = request_small
requests[6] = request_small
requests[7] = request_small
requests[8] = request_small


request = function()
    return requests[math.random(0, 8)]()
end

