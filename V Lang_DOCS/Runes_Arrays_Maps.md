## **Rune, Fixed-size arrays, arrays module and maps module in V**

## [All Runes link](https://symbl.cc/)

### 1. Rune (rune)

rune is an alias for u32 and represents a single Unicode code point.

**Operators**

- Same as for integers (because it is basically a u32):
  - Arithmetic: +, -, *, /, %, **
  - Bitwise: ~, &, , ^, <<, >>, >>>
  - Comparison: ==, !=, <, <=, >, >=

**Most useful methods**

- **.str()** — Converts the rune to a UTF-8 string
- **.bytes()** — Converts the rune to its UTF-8 byte sequence ([]u8)
- **.to_upper()** — Converts to uppercase
- **.to_lower()** — Converts to lowercase
- **.to_title()** — Converts to title case
- **.repeat(count)** — Repeats the rune count times and returns a string

**Useful functions from encoding.utf8**

- encoding.utf8.is_letter(r)
- encoding.utf8.is_number(r)
- encoding.utf8.is_space(r)
- encoding.utf8.is_control(r)
- encoding.utf8.is_punct(...)

---

### 2. Fixed-size arrays ([N]T)

**Characteristics**

- Length is fixed at compile time
- Data lives on the stack (usually faster, no heap allocation)
- You **cannot** use <<, prepend, delete, pop, clear, etc.

**Operators**

- **[]** — Indexing
- **[start..end]** — Slicing (creates a regular dynamic array copy)

**Useful operations**

- Convert to dynamic array: fixed[..] or fixed[0..fixed.len]
- Convert dynamic → fixed: [1, 2, 3]! or .to_fixed_size()
- Most array methods (filter, map, sort…) do **not** work directly on fixed arrays — convert first.

---

### 3. arrays module (most useful functions)

v

```
import arrays
```

| Function                                       | Description                            |
| ---------------------------------------------- | -------------------------------------- |
| arrays.min(arr) / arrays.max(arr)              | Minimum / maximum value                |
| arrays.idx_min(arr) / arrays.idx_max(arr)      | Index of min / max                     |
| arrays.sum(arr)                                | Sum of elements                        |
| arrays.chunk(arr, size)                        | Split into chunks of given size        |
| arrays.flatten(arr)                            | Flatten nested arrays                  |
| arrays.group(...)                              | Zip multiple arrays together           |
| arrays.group_by(...)                           | Group elements by a key function       |
| arrays.distinct(arr)                           | Unique elements (order not guaranteed) |
| arrays.uniq(arr)                               | Unique elements (array must be sorted) |
| arrays.merge(a, b)                             | Merge two sorted arrays                |
| arrays.binary_search(arr, value)               | Binary search (array must be sorted)   |
| arrays.fold(...) / arrays.reduce(...)          | Fold / reduce                          |
| arrays.partition(...)                          | Split into two arrays by predicate     |
| arrays.map_of_counts(arr)                      | Histogram (value → count)              |
| arrays.map_of_indexes(arr)                     | Value → list of indexes                |
| arrays.find_first(...) / arrays.find_last(...) | Find first/last matching element       |
| arrays.copy(mut dst, src)                      | Copy elements between arrays           |

---

### 4. maps module (most useful functions)

v

```
import maps
```

| Function                        | Description                              |
| ------------------------------- | ---------------------------------------- |
| maps.merge(m1, m2)              | Merge two maps (m2 overwrites conflicts) |
| maps.merge_in_place(mut m1, m2) | Merge into existing map                  |
| maps.filter(m, predicate)       | Filter key-value pairs                   |
| maps.invert(m)                  | Swap keys and values                     |
| maps.from_array(arr)            | Create map from array (index → value)    |
| maps.to_array(m, transform)     | Convert map to array                     |
| maps.to_map(m, transform)       | Transform keys and values into a new map |
| maps.flat_map(...)              | Map entries to arrays and flatten        |

---

These cover the most commonly used features.


