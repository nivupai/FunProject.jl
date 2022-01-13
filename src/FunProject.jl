module FunProject

# Write your package code here.
greet() = "Hello World"
export greet

"""
Adding two functions
```julia-repl
julia> add_two(3,2)

```
More bla
"""
function add_two(x,y)
    return x+y
end

export add_two

end
