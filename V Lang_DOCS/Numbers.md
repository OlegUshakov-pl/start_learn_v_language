## **Operators and methods for numbers in V language**

### Arithmetic operators

- **+** — Addition (integers and floats)
- **-** — Subtraction (integers and floats)
- ***** — Multiplication (integers and floats)
- **/** — Division (integers and floats)
- **%** — Remainder / modulo (integers only)
- ****** — Power / exponentiation (integers and floats)

### Bitwise operators (integers only)

- **~** — Bitwise NOT
- **&** — Bitwise AND
- — Bitwise OR
- **^** — Bitwise XOR
- **<<** — Left shift
- **>>** — Right shift (signed)
- **>>>** — Unsigned right shift

### Comparison operators

- **==** — Equal to
- **!=** — Not equal to
- **<** — Less than
- **<=** — Less than or equal
- **>** — Greater than
- **>=** — Greater than or equal

### Assignment operators

- **+=**, **-=**, ***=**, **/=**, **%=**
- **&=**, **|=**, **^=**
- **<<=**, **>>=**, **>>>=**

### Common methods on numbers

**Conversion to string**

- **.str()** — Converts the number to a decimal string
  Example: 42.str() → "42"
- **.hex()** — Converts to hexadecimal string (without 0x prefix)
  Example: 255.hex() → "ff"
- **.hex2()** — Converts to hexadecimal string with 0x prefix
  Example: 255.hex2() → "0xff"
- **.hex_full()** — Converts to a full fixed-length hexadecimal string (zero-padded)

**Float-specific string methods**

- **.strg()** — String in "g" printf-style format
- **.strsci(digits)** — Scientific notation string
- **.strlong()** — Full decimal notation string

**Comparison helpers (floats)**

- **.eq_epsilon(other)** — Checks equality with a small epsilon tolerance (avoids floating-point precision issues)

### Useful functions from the math module

(You need import math)

- **math.abs(x)** — Absolute value
- **math.min(a, b)** / **math.max(a, b)** — Minimum / maximum
- **math.sqrt(x)** — Square root
- **math.pow(x, y)** — Power (same as **)
- **math.floor(x)** — Rounds down to nearest integer
- **math.ceil(x)** — Rounds up to nearest integer
- **math.round(x)** — Rounds to nearest integer
- **math.trunc(x)** — Truncates toward zero
- **math.sin / cos / tan / asin / acos / atan** — Trigonometric functions
- **math.log / log2 / log10 / exp** — Logarithmic and exponential functions

### Notes

- Integer types: i8, i16, int (always 32-bit), i64, u8, u16, u32, u64, etc.
- Float types: f32, f64 (default for float literals).
- Smaller types can be automatically promoted to larger compatible types in expressions.
- For very large integers use the math.big module.


