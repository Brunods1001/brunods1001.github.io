# This file was generated, do not modify it. # hide
"Returns a function that approximates its derivative"
function diffapprox(f, deltax)
	x -> (f(x + deltax) - f(x)) / deltax 
end
vec_deltax = 0:1:5
f₂(x) = log(x) * x^3
df₂(x) = x^2 + 3x^2 * log(x)
plot(x, df₂.(x), label = "Truth")
for deltax in vec_deltax
	y = diffapprox(f₂, deltax).(x)
	plot!(x, y, alpha = 0.8, linestyle = :dot, label = deltax)
end
plot!()
savefig(joinpath(@OUTPUT, "f2logplot.svg"))