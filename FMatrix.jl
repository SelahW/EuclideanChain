include("Main.jl")
function GetMatrix(rows::Int,cols::Int)
    A = zeros(Int, rows,cols)
    for i = 1:rows for j = 1:cols
            A[i,j]=F(i,j)
        end
    end
    return A
end
