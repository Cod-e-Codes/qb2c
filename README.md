# QB2C: QBasic to C (Ncurses) Transpiler

QB2C is a single-file C program designed to transpile a subset of QBasic code into C code utilizing the Ncurses library for terminal I/O. This allows simple QBasic programs to be compiled and run on modern Linux/Unix systems.

## Workflow

### Compile the Transpiler:

```bash
gcc qb2c.c -o qb2c
```

### Transpile the QBasic File (.bas):

The transpiler reads the QBasic file and outputs the generated C code to standard output, which should be redirected to a new .c file.

```bash
./qb2c demo.bas > demo.c
```

### Compile the Generated C Program:

The generated C code must be linked against the Ncurses library (-lncurses).

```bash
gcc demo.c -o demo -lncurses
```

### Run the Executable:

```bash
./demo
```

## Supported QBasic Features

* REM and ' (Comments)
* CLS (Clear screen)
* PRINT (Outputting strings and variables; supports ; separator)
* INPUT (Receiving input for numeric and string variables)
* LET (Implicit assignments for numeric and string variables)
* IF...THEN...ELSE...END IF (Conditional blocks)
* FOR...NEXT Loops (Iterative blocks)
* SLEEP (Uses napms for pausing execution)
* GOTO and Labels (Jump statements)

## Known Issues (Current State)

* FOR loops in the demo may not produce correct results.
* Future enhancements could include support for WHILE/WEND or SUB/END SUB.
