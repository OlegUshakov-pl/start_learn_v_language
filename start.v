import os

fn main() {
    areas := ['game', 'web', 'tools', 'science', 'systems',
              'embedded', 'drivers', 'GUI', 'mobile']
    for area in areas {
        println('Hello, ${area} developers!')
    }
     os.input('Press Enter to exit...')
}
