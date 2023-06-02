# ShellShock Attack

## Team Name: Omniscient Otters 

## Project Description
The shellshock vulnerability is a remote command excution vulnerabiltiy identified in BASH. To leverage this vulnerabiltiy in executing an exploit, we target the fact that interpretation does not end when a function definition does. Because BASH may incorrectly execute trailing commands when it imports a function definition as an environmental variable, our demonstration and lab will illustrate various attack vectors involving passing environment variables into BASH such that the adversary may execute commands with higher privilege requirements, with a focus on two attack vectors utilizing a CGI script and OpenSSH.

## Directions
Read PRESENTATION.md to learn about the exploit, and then headover to the TryHackMe room for a "practical" example of using the exploit
If you want to run the vms yourself, you can download them here and run them in a virtualizer of your choice (we used virtualbox)
TryHackMe VM: https://file.io/TKHkrKkluuAn
Demo VM: https://file.io/DaMFuASj3oBX
## Links
[Presentation](./PRESENTATION.md)  
[HOMEWORK - TryHackMe Room](./HOMEWORK.md)
