## Common string methods (and operators) in V language

Here is a practical list of the main ways to work with strings in V.
Descriptions are in English, as requested.

---

### Operators

— Concatenates two strings
+= — Appends a string to a mutable string
== / != — Equality / inequality comparison
< / <= / > / >= — Lexicographical comparison
[ ] — Indexing (returns a single byte u8)
[start..end] — Slicing (returns a substring)

### Most useful methods

Trimming / cleaning

trim(cutset) — Removes any characters from cutset from both the start and the end of the string
trim_left(cutset) — Removes characters from cutset only from the start
trim_right(cutset) — Removes characters from cutset only from the end
trim_space() — Removes whitespace ( , \n, \t, \r, etc.) from both ends
trim_space_left() — Removes whitespace only from the start
trim_space_right() — Removes whitespace only from the end

### Searching

contains(substr) — Returns true if the string contains substr
index(substr) — Returns the position of the first occurrence of substr (or none)
last_index(substr) — Returns the position of the last occurrence of substr
starts_with(prefix) — Returns true if the string starts with prefix
ends_with(suffix) — Returns true if the string ends with suffix
count(substr) — Counts how many times substr appears

### Splitting & joining

split(delim) — Splits the string into an array by the delimiter
split_nth(delim, n) — Splits into at most n parts
rsplit(delim) — Splits from the right
fields() — Splits by any whitespace (spaces, tabs, newlines)
join(arr) (on []string) — Joins an array of strings with the current string as separator

### Replacing & modifying

replace(old, new) — Replaces all occurrences of old with new
replace_once(old, new) — Replaces only the first occurrence
repeat(count) — Repeats the string count times
reverse() — Returns the string reversed
to_lower() — Converts to lowercase
to_upper() — Converts to uppercase
capitalize() — Capitalizes the first character

### Extracting parts

substr(start, end) — Returns the substring from start to end
after(sub) / all_after(sub) — Returns everything after the first/last occurrence of sub
before(sub) / all_before(sub) — Returns everything before the first/last occurrence of sub
find_between(start, end) — Returns the text between two markers

### Conversion & checking

len — Length of the string in bytes
bytes() — Converts the string to []u8
runes() — Converts the string to an array of Unicode code points ([]rune)
int() / i64() / f64() / bool() — Parses the string into the corresponding type
is_blank() — Returns true if the string is empty or contains only whitespace
is_empty() — Returns true if the string has zero length

### Other useful ones

clone() — Creates a copy of the string
hash() — Returns a hash of the string
hex() — Returns the hexadecimal representation of the bytes

These are the most commonly used ones.
There are more specialized methods (for example related to Unicode, identifiers, number formats, etc.).

You can see the full up-to-date list here:
[https://modules.vlang.io/builtin.html#string](https://modules.vlang.io/builtin.html#string)
