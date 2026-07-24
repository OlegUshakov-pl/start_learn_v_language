import os

fn main() {
   start()
   println('-----------------------')
   a := os.input('Enter first number: ').int()
   b := os.input('Enter second number: ').int()
   add(a,b)

}


fn start() {
     areas := ['game', 'web', 'tools', 'science', 'systems',
              'embedded', 'drivers', 'GUI', 'mobile']
    for area in areas {
        println('Hello, ${area} developers!')
    }
    os.input('Push any key')
}

fn add(a int, b int){
    c :=a+b
    println('The sum of ${a} and ${b} is ${c}')
    os.input('Push any key')
}
