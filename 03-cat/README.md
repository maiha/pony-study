```console
$ make
$ ./03-cat README.md
```

#### Benchmark

- file: `/tmp/file` (871MB)

```console
$ time ./03-cat /tmp/file >| x
86.30s user 9.70s system 146% cpu 1:05.53 total
$ time ./cr-cat /tmp/file >| x
0.95s user 1.94s system 37% cpu 7.705 total
$ time cat /tmp/file >| x
0.01s user 1.52s system 27% cpu 5.626 total
```
