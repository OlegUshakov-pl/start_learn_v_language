import os
import math

fn main(){
ch:=os.input("Enter  ")
match ch{
"degrees"{ 
	deg:=os.input("Enter degree: ").f64()
	deg (deg f64)
}
'radians'{ 
	rad:= os.input("Enter radian: ").f64()
	rad (rad f64)
}
}

deg (deg f64)f64
{
deg_f:= deg.f64()
rad:= deg_f * math.pi / 180
println('Answer is: ${rad:.2f} radians')
}

fn rad(rad f64)f64
{
rad_f:= rad.f64()
r:=rad_f * 180 / math.pi
println('Answer is: ${r:.2f} degrees')
}
