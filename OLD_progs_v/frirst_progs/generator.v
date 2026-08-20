//Generator

import os
import rand

fn main(){

	str :="abcdefghijklmnopqarstuvwxyz123456789"

	str_arr:=str.split('')

	num :=os.input('Enter nuber of digits: \n').int()

	mut n_arr:=[ ]string{}
	for _ in 0 .. num {
	r := rand.intn(str_arr.len) or { 0 }
	n_arr << str_arr[r]
	}

	println('')
	println("Password is: ${n_arr.join('')}")
	println('')

	os.input('Press a key...')
}
