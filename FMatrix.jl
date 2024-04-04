include("Main.jl")
using CSV
using DataFrames
using DelimitedFiles
function GetMatrix(rows::Int,cols::Int)
    A = zeros(Int, rows,cols)
    for i = 1:rows for j = 1:cols
            A[i,j]=F(i,j)
        end
    end
    FileName = "$rows X $cols.csv"
    CSV.write(FileName, Tables.table(A),delim=',',decimal='.')
    return A
end
