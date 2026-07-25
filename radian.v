import os
import math

fn main(){
  ch:=os.input("Enter degrees or radians:\n")
match ch {
'degrees' { degrees() }
'radians' { radius() }
else { println('Unknown option') }
}
}

fn degrees() {
deg_r := os.input("Enter degree: ").f64()
rad_g := deg_r * math.pi / 180
println('Answer is: ${rad_g:.2f} radians')
}

fn radius() {
rad_g := os.input("Enter radian: ").f64()
deg_r := rad_g * 180 / math.pi
println('Answer is: ${deg_r:.2f} degrees')
}
