# Python Linter and formatter

[![Build Status](https://ci.isaev.tech/api/badges/IsaevTech/pyfmt/status.svg)](https://ci.isaev.tech/IsaevTech/pyfmt)

## Usage

```bash
lint  # Lint all python scripts
lint file1 file2 file3  # Lint files with name passed in args
format  # Reformat all python scripts (Will exit 1 if something formatted)
format file1 file2 file3  # Reformat files with name passed in args
minify  # Minify all python scripts (Will exit 1 if something formatted)
minify file1 file2 file3  # Minify files with name passed in args
```

## Examples

### Initial python script

```bash
#!/usr/bin/env python3
# Python program to display the Fibonacci sequence
def recur_fibo(n):
 if n <= 1:
  return n
 else:
  return(recur_fibo(n-1) + recur_fibo(n-2))
nterms = 10
# check if the number of terms is valid
if nterms <= 0:
 print("Plese enter a positive integer")
else:
 print("Fibonacci sequence:")
 for i in range(nterms):
  print(recur_fibo(i))
```

### lint (with exit-code: 1)

```diff
--- ./example.py (original)
+++ ./example.py (reformatted)
@@ -1,15 +1,17 @@
 #!/usr/bin/env python3
 # Python program to display the Fibonacci sequence
 def recur_fibo(n):
- if n <= 1:
-  return n
- else:
-  return(recur_fibo(n-1) + recur_fibo(n-2))
+    if n <= 1:
+        return n
+    else:
+        return (recur_fibo(n - 1) + recur_fibo(n - 2))
+
+
 nterms = 10
 # check if the number of terms is valid
 if nterms <= 0:
- print("Plese enter a positive integer")
+    print("Plese enter a positive integer")
 else:
- print("Fibonacci sequence:")
- for i in range(nterms):
-  print(recur_fibo(i))
+    print("Fibonacci sequence:")
+    for i in range(nterms):
+        print(recur_fibo(i))
```

### format

```bash
#!/usr/bin/env python3
# Python program to display the Fibonacci sequence
def recur_fibo(n):
    if n <= 1:
        return n
    else:
        return (recur_fibo(n - 1) + recur_fibo(n - 2))


nterms = 10
# check if the number of terms is valid
if nterms <= 0:
    print("Plese enter a positive integer")
else:
    print("Fibonacci sequence:")
    for i in range(nterms):
        print(recur_fibo(i))

```

### minify

```bash
B=print
def A(n):
	if n<=1:return n
	else:return A(n-1)+A(n-2)
C=10
if C<=0:B('Plese enter a positive integer')
else:
	B('Fibonacci sequence:')
	for D in range(C):B(A(D))
```
