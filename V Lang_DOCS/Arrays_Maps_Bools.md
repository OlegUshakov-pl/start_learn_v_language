## **Arrays, Maps and Bools in V language**

### 1. Arrays ([]T)

**Operators**

- **<<** — Append one element or another array (array must be mutable)
- **[ ]** — Indexing (access element by index)
- **[start..end]** — Slicing (create a new array view)
- **in / !in** — Check if a value exists in the array

**Most useful methods**

- **.len** — Number of elements
- **.cap** — Current capacity
- **.clone()** — Creates a deep copy of the array
- **.filter(predicate)** — Returns a new array with elements that satisfy the condition
- **.map(fn)** — Transforms every element and returns a new array
- **.any(predicate)** — Returns true if at least one element matches
- **.all(predicate)** — Returns true if all elements match
- **.sort()** / **.sort_with_compare()** — Sorts the array
- **.reverse()** — Returns a new reversed array
- **.reverse_in_place()** — Reverses the array in place
- **.insert(index, value)** — Inserts an element (or array) at the given index
- **.prepend(value)** — Inserts at the beginning
- **.delete(index)** — Removes element at index
- **.delete_last()** — Removes the last element
- **.pop()** — Removes and returns the last element
- **.first()** / **.last()** — Returns the first/last element
- **.clear()** — Empties the array (keeps capacity)
- **.trim(new_len)** — Truncates length
- **.repeat(n)** — Repeats the array n times
- **.join(separator)** — (for []string) joins elements into one string

---

### 2. Maps (map[K]V)

**Operators**

- **[]** — Access / assign value by key
- **in / !in** — Check if a **key** exists in the map

**Most useful methods / operations**

- **.len** — Number of key-value pairs
- **.keys()** — Returns an array of all keys
- **.values()** — Returns an array of all values
- **.delete(key)** — Removes a key-value pair
- **.clear()** — Removes all entries
- **.clone()** — Creates a copy of the map
- **.move()** — Moves the map (more efficient than clone in some cases)

**Useful functions from maps module**

- maps.merge(m1, m2) — Merges two maps (m2 overwrites m1 on conflicts)
- maps.filter(...) — Filters map entries
- maps.invert(m) — Swaps keys and values

---

### 3. Bools (bool)

**Operators**

- **!** — Logical NOT
- **&&** — Logical AND (short-circuit)
- **||** — Logical OR (short-circuit)
- **!=** — Logical XOR (exclusive OR)
- **==** — Equality
- **&&=** / **||=** — Assignment versions of AND / OR

**Notes**

- Only true and false are valid boolean values.
- There are almost no methods on bool itself — almost everything is done with the operators above.
- You can convert other types to bool with conditions or explicit checks (e.g. x != 0, s.len > 0, etc.).
