## HELP

### from V to EXE
```
v -prod -o converter.exe radian.v
```

### Run
```
v run radian.v
```

### (.dll / .so / .dylib)

use -shared:

```
v -shared -o mylib.dll mylib.v
```
or:

```
v -shared mylib.v
```

If you have to use functions outside (exported) ,the you have to mark them by attribute @[export: '...']:

v// mylib.v
```
@[export: 'add']
pub fn add(a int, b int) int {
    return a + b
}

@[export: 'hello']
pub fn hello() {
    println('Hello from DLL!')
}

```

---

### To use V in Python like .dll

1. A Basic example 

For exaple you have  DLL mylib.dll with functions:

v// mylib.v
```
@[export: 'add']
pub fn add(a int, b int) int {
    return a + b
}

@[export: 'hello']
pub fn hello() {
    println('Hello from V DLL!')
}

```

### To compile

```
v -shared -o mylib.dll mylib.v
```

### To use in Python


**Python**
```

from ctypes import CDLL, c_int

# Load DLL
lib = CDLL("./mylib.dll")          # or a full path: r"C:\path\to\mylib.dll"

# Function without parameters
lib.hello()                        # a simple call

# Function with parameters
# Specify type of arguments and a callback value
lib.add.argtypes = [c_int, c_int]  # type of arguments
lib.add.restype = c_int            #  a callback value

result = lib.add(10, 25)
print("Result add:", result)    # 35
```

### A full example with defferent types

**Python**
```
from ctypes import (
    CDLL, c_int, c_double, c_char_p, 
    c_void_p, POINTER, byref
)

lib = CDLL("./mylib.dll")

# int add(int a, int b)
lib.add.argtypes = [c_int, c_int]
lib.add.restype = c_int
print(lib.add(5, 7))               # 12

# double multiply(double a, double b)
lib.multiply.argtypes = [c_double, c_double]
lib.multiply.restype = c_double
print(lib.multiply(2.5, 4.0))      # 10.0

# void print_message(char* msg)
lib.print_message.argtypes = [c_char_p]
lib.print_message.restype = None
lib.print_message(b"Hello from Python!")
```

**Python**
```
import os
from ctypes import CDLL

dll_path = os.path.join(os.path.dirname(__file__), "mylib.dll")
lib = CDLL(dll_path)
```
