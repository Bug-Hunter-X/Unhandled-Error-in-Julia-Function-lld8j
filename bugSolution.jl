```julia
function myfunction(x)
  if x >= 0
    return x^2
  else
    throw(ArgumentError("x must be non-negative. Received: ", x))
  end
end

println(try
  myfunction(-1)
catch e
  println("Error: ", e)
end)
```