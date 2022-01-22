### A Pluto.jl notebook ###
# v0.17.3

using Markdown
using InteractiveUtils

# ╔═╡ c959bcf4-7b2e-11ec-0e01-3d8903a358de
begin
	using BenchmarkTools
	using Test
end

# ╔═╡ dffd9e35-0e23-4446-865f-87599d3e5dde
@benchmark sol1(data)

# ╔═╡ a8ad74df-161a-427c-800b-e7ef4eedfec6
@benchmark sol1_2(data)

# ╔═╡ 5e61fe72-0b4f-4875-a532-b79192225629
@benchmark sol1_3(data)

# ╔═╡ 188b7c93-6b08-47cc-ac6d-56b4a64e5cc7
function sol1(data)
	lines = split(data)
	prev = parse(Int, lines[1])
	num_increase = 0
	for line in lines[2:end]
		val = parse(Int, line)
		if val > prev
			num_increase = num_increase + 1
		end
		prev = val
	end
	num_increase
end

# ╔═╡ 2c5dbcbb-84bf-4131-a4ff-35d686f8441f
function sol1_2(data)
	nums = parse.(Int, split(data))
	diffs = nums[2:end] .- nums[1:end-1]
	sum(diffs .> 0)
end

# ╔═╡ dfd9847e-1bf2-4cb7-8122-b02ac245ee5b
function sol1_3(data)
	nums = split(data)
	sum(nums[1 + i] > nums[i] for i in 1:(length(nums) - 1))
end

# ╔═╡ 1fad1d08-56a1-4984-8bff-72928938dc47
data = """199
200
208
210
200
207
240
269
260
263"""

# ╔═╡ c6fef89e-4859-41aa-8425-ecf3c8b6d9a7
@test sol1(data) == 7

# ╔═╡ 2d6c5164-1c2a-4f76-b119-eaeabb203a74
@test sol1_2(data) == 7

# ╔═╡ 3db8e5db-b838-4258-80fd-3e5865902a3c
@test sol1_3(data) == 7

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
BenchmarkTools = "6e4b80f9-dd63-53aa-95a3-0cdb28fa8baf"

[compat]
BenchmarkTools = "~1.2.2"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.0-DEV.1170"
manifest_format = "2.0"
project_hash = "cdb03a69499471ffe0f32a9f377a6fd82c192b6f"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.BenchmarkTools]]
deps = ["JSON", "Logging", "Printf", "Profile", "Statistics", "UUIDs"]
git-tree-sha1 = "940001114a0147b6e4d10624276d56d531dd9b49"
uuid = "6e4b80f9-dd63-53aa-95a3-0cdb28fa8baf"
version = "1.2.2"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "0.5.0+0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "8076680b162ada2a031f707ac7b4953e30667a37"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.2"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.17+2"

[[deps.Parsers]]
deps = ["Dates"]
git-tree-sha1 = "92f91ba9e5941fc781fecf5494ac1da87bdac775"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.2.0"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.Profile]]
deps = ["Printf"]
uuid = "9abbd945-dff8-562f-b5e8-e1ebf5ef1b79"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "3.1.0+0"
"""

# ╔═╡ Cell order:
# ╠═c959bcf4-7b2e-11ec-0e01-3d8903a358de
# ╠═c6fef89e-4859-41aa-8425-ecf3c8b6d9a7
# ╠═dffd9e35-0e23-4446-865f-87599d3e5dde
# ╠═2d6c5164-1c2a-4f76-b119-eaeabb203a74
# ╠═a8ad74df-161a-427c-800b-e7ef4eedfec6
# ╠═3db8e5db-b838-4258-80fd-3e5865902a3c
# ╠═5e61fe72-0b4f-4875-a532-b79192225629
# ╠═188b7c93-6b08-47cc-ac6d-56b4a64e5cc7
# ╠═2c5dbcbb-84bf-4131-a4ff-35d686f8441f
# ╠═dfd9847e-1bf2-4cb7-8122-b02ac245ee5b
# ╠═1fad1d08-56a1-4984-8bff-72928938dc47
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
