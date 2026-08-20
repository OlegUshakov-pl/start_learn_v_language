import calc
import os

fn main(){

a:=os.input('Number a:').int()
b:=os.input('Number b:').int()


println('${calc.title}\n')

println('Answer sum: ${calc.sum(a,b)}')

os.input('Press key...')

}
