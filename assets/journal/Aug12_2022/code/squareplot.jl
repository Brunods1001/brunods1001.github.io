# This file was generated, do not modify it. # hide
x = 1:10
f(x) = x^2
plot(x, f.(x))
savefig(joinpath(@OUTPUT, "squareplot.svg"))