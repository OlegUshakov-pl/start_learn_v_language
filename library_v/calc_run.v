import calc
import os

fn main(){

a:=os.input('Numder a:').int()
b:=os.input('Numder b:').int()


println('${calc.title}\n')

println('Answer sum: ${calc.sum(a,b)}')

os.input('Press key...')

}
