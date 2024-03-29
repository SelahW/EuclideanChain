function FVerbose(x::Int,y::Int)
    total = 0
    originalx = x
    originaly = y
    ComDiv = gcd(x,y)
    if ComDiv ≠ 1
        x ÷= ComDiv
        y ÷= ComDiv
        println("F($originalx,$originaly)=F($x,$y)")
    end
    while x ≠ 1 && y ≠ 1
        oldx = x
        oldy = y
        total += y ÷ x
        x %= y
        y %= oldx 
        println("F($oldx,$oldy)=F($x,$y)+$total")
    end
    println("F($originalx,$originaly)=$(total + y + 1)")
    return total + y + 1
end
function F(x::Int,y::Int)
    total = 0 
    ComDiv = gcd(x,y)
    if ComDiv ≠ 1
        x ÷= ComDiv
        y ÷= ComDiv
    end
    while x ≠ 1 && y ≠ 1
        oldx = x
        total += y ÷ x
        x %= y
        y %= oldx
    end
    return total + y + 1
end
function PathLength(c::Int,a...)
    return F(sum(a),c)-1
end
