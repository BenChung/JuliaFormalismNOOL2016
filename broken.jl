abstract A1
type C1 <: A1 end
abstract A2 <: A1
type C3 <: A2 end

function example(arg::C1) print("Hello\n") end
function problem(arg::A1)
  return example(arg)
end

problem(C1()) #prints Hello
problem(C3()) #error
