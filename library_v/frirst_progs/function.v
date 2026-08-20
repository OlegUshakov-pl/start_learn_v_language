import os
import math

fn main(){

a_name:= os.input('Enter your name: ')
b_sur:= os.input('Enter your surname: ')

a:=os.input('Input side a: ').f64()
b:=os.input('Input side b: ').f64()

par(a_name, b_sur)

multiply(a, b)

os.input('Press Enter to exit...')

}

fn par(a_name string, b_sur string){
println('-----------------------')
println('Hello ${a_name} ${b_sur}')
println('-----------------------')
}

fn multiply(a f64, b f64){

 mul:= math.sqrt(a**2 + b**2)

 println('The result of the multiplication is: ${mul:.2f}')

}
