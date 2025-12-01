' Example QBasic Program
CLS
PRINT "Welcome to QB2C Demo!"

' Variables
INPUT "Enter your name: ", Name$
INPUT "Enter your age: ", Age

' Greeting
PRINT "Hello, "; Name$; "!"
PRINT "You are "; Age; " years old."

' Conditional
IF Age >= 18 THEN
    PRINT "You are an adult."
ELSE
    PRINT "You are a minor."
END IF

' Loop demo
FOR i = 1 TO 5
    PRINT "Counting: "; i
NEXT i

' Wait for user
PRINT "Goodbye!"
SLEEP 3
