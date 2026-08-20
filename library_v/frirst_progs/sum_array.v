import os

fn main(){

mut arr:=os.input("Give me array with ',' : ")

arr_n := arr.split(',')

mut sum:=0

for item in arr_n{
  sum += item.int()
}

println('Sum equal: ${sum}')

os.input('Press key...')

}
