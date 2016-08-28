abstract A1
type C1 <: A1 end
type C2 <: A1 end
abstract A2 <: A1
type C3 <: A2 end

function example(arg::C1) print("Hello ") end
function example(arg::C2) print("World\n") end
function problem(arg::A1)
  return example(arg)
end

problem(C1()) #Hello
problem(C2()) #World
problem(C3()) #error
