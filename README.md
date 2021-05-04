# MatOperators

Matrix Operators written in Perl.

## Operators

* `mat_add($mat1_ref, $mat2_ref)`

* `mat_minus($mat1_ref, $mat2_ref)`

* `mat_multiply($mat1_ref, $mat2_ref)`

* `mat_dot($mat1_ref, $mat2_ref)`

* `mat_num($num, $mat1_ref)`

* `mat_T($mat1_ref)`

The input param `$mat_ref` is ref to arrays of arrays:

```perl
$mat_ref = [
    [1, 2, 3],
    [4, 5, 6],
];
```

and so does the return param `$res_ref`.

## How to run demo

```perl
$ chmod +x demo.pl
$ ./demo.pl
```

or

```perl
$ perl -w demo.pl # -w is recommended
```
