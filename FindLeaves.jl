include("Main.jl")
include("/home/theo/Documents/GitHub/Juliastuff/RandomFunctions.jl")
function FindLeaves(a::Int,c::Int)
    DivisorsOfC = ProperDiv(c)
    Series = []
    for i ∈ DivisorsOfC
        append!(Series,1/(1-a^i))
    end
    return Series
end
function ProperDiv(c::Int)
    return deleteat!(Divisors(c),length(Divisors(c)))
end
