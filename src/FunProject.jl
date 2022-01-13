
module FunProject
using Combinatorics

"""
Each word in a sentence (string) is sorted alphabetically.

#### Examples
```julia-repl
julia> order_string("This is a sorted sentence; Who is 1 and two  ")
" This is a deorst ;ceeennst Who is 1 adn otw  "

```
```jldoctest
julia> order_string("abracadabra")
```
"""
function order_string(s::AbstractString="Hello world")
	
	s0=replace(s,"+"=>" + ","-"=>" - ")
	x=split(s0," ") # Split into words delim=" "
	
	Y=""
	for wIdx = 1:length(x)
		# w=x[wIdx] # word
		y=string(sort([a for a in x[wIdx]])...)  # sort each word
		Y= Y * " " * y 
	end
	Yout=replace(Y," " =>" ")
	
	return Yout
end

export order_string


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
