import os
import math

fn main() {
	a_name := os.input(prompt: 'Enter your name: ')
	b_sur := os.input(prompt: 'Enter your surname: ')

	a := get_number('Input side a: ')
	b := get_number('Input side b: ')

	par(a_name, b_sur)
	multiply(a, b)

	os.input(prompt: 'Press Enter to exit...')
}

fn get_number(prompt string) f64 {
	for {
		input := os.input(prompt: prompt)
		if input.len == 0 {
			println('Please enter a number.')
			continue
		}
		num := input.f64()
		if num == 0 && input.trim() != '0' {
			println('Invalid number, try again.')
			continue
		}
		return num
	}
}

fn par(a_name string, b_sur string) {
	println('--------------------------')
	println('Hello ${a_name} ${b_sur}')
	println('--------------------------')
}

fn multiply(a f64, b f64) {
	mul := math.sqrt(a * a + b * b)
	println('The result is: ${mul:.2f}')
}
