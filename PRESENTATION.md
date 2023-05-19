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

## Attack Vector 0: openSSH ForceCommand
SSH (Secure Shell) is a service that allows user to securely access a shell on a remote computer. Typically, it is good security practice to only grant services the minimum required permissions. 

Instead of allowing a service to execute arbitrary commands over SSH, a "Forced Command" can be used to restrict a user to only executing one command. When a Forced Command is specified, this user should not be able to execute any other commands.

## Attack Vector 1: CGI Script
