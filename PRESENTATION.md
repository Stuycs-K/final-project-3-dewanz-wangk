# Presentation
## Bash Overview
Before we talk about the shellshock exploit, lets have a quick refresher about bash
### Variables

Bash treats everything as a string by default. You can access variables by appending '$' in front of a variable name
```bash
foo=bar
echo $foo
# bar

foo="bar"
echo $foo
# bar
```

However, any strings with spaces need quotes for proper assignment
```bash
foo=bar bar
# bar: command not found

foo="bar bar"
echo $foo
"bar bar"
```

### Environment Variables
Environment variables store data used by the operating system and other programs. When you open a new shell session, these pre-defined variables will be ready for your use. 

For example, `$HOME` contains your home directory, `$PATH` is the list of directories that programs have access to, etc.


### The `env` command
`env` is a command that allows you to manipulate environment variables. One way `env` can be used is to set environment variables for commands:
```bash
$ env foo=bar printenv 
HOSTTYPE=x86_64
LANG=C.UTF-8
PATH=/home/alice:/usr/local/bin
TERM=xterm-256color
HOME=/home/alice
USER=alice
LOGNAME=alice
SHELL=/usr/bin/bash
foo=bar
```
Here we run `printenv`, which prints all environment variables, after using `env` to make a new environment variable `foo` that equals `bar`, which appears in the `printenv` output as expected.

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


=======

## Attack Vector 0: OpenSSH RCE
SSH (Secure Shell) is a service that allows user to securely access a shell on a remote computer. Typically, it is good security practice to only grant services the minimum required permissions. 

Instead of allowing a service to execute arbitrary commands over SSH, a "Forced Command" can be used to restrict a user to only executing one command. When a Forced Command is specified, this user should not be able to execute any other commands.

## Attack Vector 1: CGI Script
