@def title = "Franklin Example"
@def tags = ["syntax", "code"]

> This is a static site I made with [Franklin.jl](https://franklinjl.org)
> (work in progress)

# How I spend my time these days

How one wisely spends time is an optimization problem that depends on personal goals. Willpower, focus, and desire are limited resources one has to pursue goals in the foreground of a distraction-full world. Personally, I cannot rely solely on these resources to achieve my goals because they wane as challenges, hunger, or drowsiness increase. It is with this realization that I am searching for a perfect schedule to maximize my productivity and well-being.

\tableofcontents <!-- you can use \toc as well -->

## Perfectionism inhibits my progress

I fall victim to overplanning, starting online courses, taking too many notes, and buying books. I have confidence in myself that I can finish all these endeavors quickly. I still believe in myself as I type this. The problem is: I start a new project every few days and let go of other projects I started. This pattern leaves me with few personal projects to brag about. It's not interesting to tell people how I started a [Chess Engine](https://github.com/Brunods1001/Chess.jl) in Julia. Above all, I never feel fulfilled! Wouldn't it be better to take on one thing at a time and fully commit?

Just for reference, here are a few courses and books I started and desperately want to finish. Some of these have been on my todo list for over a year weighing me down.
- Coursera
- Golang course
	- Andrew Ng's new ML course
	- Systems biology
	- Bioinformatics specialization
	- Biostatistics
- FrontendMasters
- Books
	- Deep Learning with Python
	- Regression and other stories
	- Elements of statistical learning
	- Rust in Action
	- The Rust Lang book
- Manolis Kellis' online videos
- Uri Alon's online videos
- Steven Brunton's online videos
- And many more

## New approach

I want to put my progress out there. Maybe no one will ever read this, but the possibility will motivate me to finish what I start and choose my projects wisely.

I will be updating this site daily with notes and code examples using the `highlight.js` like this Julia code block:
```julia
abstract type Point end
struct PointR2{T<:Real} <: Point
    x::T
    y::T
end
struct PointR3{T<:Real} <: Point
    x::T
    y::T
    z::T
end
function len(p::T) where T<:Point
  sqrt(sum(getfield(p, η)^2 for η ∈ fieldnames(T)))
end
```

I will try to use Julia for most things because I know it well and I enjoy coding with it for its type system. It falls somewhere in between Python and Rust; it has high development speed, 

