# Presentation
## Bash Overview
Before we talk about the shellshock exploit, lets have a quick refresher about bash
### Variables

Bash treats everything as a string. You can access variables by appending '$' in front of a variable name
```bash
foo=bar
echo $foo
# bar

foo="bar"
echo $foo
# bar
```
### Environment Variables
Environment variables store data used by the operating system and other programs.

For example, `$HOME` contains your home directory, `$PATH` is the list of directories that programs have access to, etc.



### Function Declaration
```bash
function x {
    echo "hello world"
}
x () {
    echo "hello world"
}

x='() { echo "hello world"; }'
```
These three function declarations are equivalent
## Shellshock
Shellshock is a series of 6 exploits that all take advantage of the bash parser to cause unintended code execution. They effect bash versions 1.03 to 4.3, which is 25 years of bashs since 1989!

The exploit looks something like this:
```bash
env x='() { :;}; echo vulnerable' bash -c "echo this is a test"
```
The `env` command set 


