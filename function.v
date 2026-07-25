import os

fn main(){

a_name:= os.input('Enter your name: ')
b_sur:= os.input('Enter your surname: ')

par(a_name, b_sur)

}

fn par(a_name string, b_sur string){
  println('-----------------------')
	println('Hello ${a_name} ${b_sur}')
	println('-----------------------')
}
