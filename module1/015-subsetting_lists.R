# Rebranded for a student learning how R list subsetting maps to Python (dict/list) subsetting.
# Notes:
#  - R lists with names ~ Python dicts mapping string keys to values
#  - R vectors ~ Python lists
#  - R indexes are 1-based; Python indexes are 0-based
#  - R single-bracket x[1] returns a sublist (still a list). Python slicing [0:1] returns a list of values.
#  - R double-bracket x[["name"]] or x$name extracts the element (like dict["name"] in Python).

# create a list with two elements:
#  - foo: integer vector 1,2,3,4   (-> Python: "foo": [1,2,3,4])
#  - bar: character vector "a","b","c"   (-> Python: "bar": ["a","b","c"])
x <- list(
    foo = 1:4,
    bar = c("a", "b", "c")
)

x            # print whole list
# Python equivalent (dict): print(x) where x = {"foo":[1,2,3,4], "bar":["a","b","c"]}

x[1]         # single-bracket returns a sublist (a list containing element 'foo')
# Python equivalent: [x["foo"]]  OR if x were a list-of-values then x[0:1] returns a list slice

x$bar        # $ extracts the element named 'bar' (returns the character vector)
# Python equivalent: x["bar"]   (returns ["a","b","c"])

x[["bar"]]   # double-bracket also extracts the element named 'bar' (same as $)
# Python equivalent: x["bar"]

x$bar[2]     # take the 2nd element of the 'bar' vector ("b")
# Python equivalent (remember 0-based): x["bar"][1]   -> "b"

x$foo[x$foo > 2]  # logical subsetting: elements of 'foo' greater than 2 (returns 3,4)
# Python equivalent: [v for v in x["foo"] if v > 2]   -> [3,4]

# redefine x, now including a matrix element 'baz'
# R matrix ~ Python could be a nested list or a numpy array
x <- list(
    foo = 1:4,
    bar = c("a", "b", "c"),
    baz = matrix(1:6, nrow = 2, ncol = 3)  # 2x3 matrix
)

x[c(1, 3)]   # select elements 1 and 3 by index with single-bracket: returns a sublist with 'foo' and 'baz'
# Python equivalents:
#  - if x is a dict and you want those keys: {k: x[k] for k in ("foo","baz")}
#  - if x were a list-of-values and you want by index: [x[i] for i in (0,2)]

x$foo[1]     # get the first element of the 'foo' vector (1)
# Python equivalent (0-based): x["foo"][0]   -> 1

x[["foo"]][1]# extract 'foo' then take its first element (same as previous)
# Python equivalent: x["foo"][0]

# Quick tip summary for Python learners:
#  - R: x$name or x[["name"]]   -> Python: x["name"]
#  - R: x[i] (single-bracket) returns a list/sublist -> Python: slicing x[i-1:i] or list comprehension
#  - R indexing starts at 1, Python starts at 0: subtract 1 for direct index translations.