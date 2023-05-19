# Presentation
## Bash Overview
Before we talk about the shellshock exploit, lets have a quick refresher about bash
### Variables
### Function Declaration
```bash
function x {
    # something
}
x () {
    # something
}
```
These two function declarations are equivalent
## Shellshock
Shellshock is a series of 6 exploits that all take advantage of the bash parser to cause unintended code execution. They effect bash versions 1.03 to 4.3, which is 25 years of bashs since 1989!

The exploit looks something like this:
