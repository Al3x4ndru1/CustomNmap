# CustomNmap script

This project started as a challenge for me to improve my bash scripting skills during the cyber security module.

-----------------------------

The author created a custom script to automate network discovery and port scanning (TCP and UDP). The programming language chosen for this task was Bash since it is a command language used for automating tasks in Linux. Moreover, Bash is much faster than other high-level programming languages
in a single-thread architecture such as Java or Python. 

The only downside of this script is the single-thread architecture used because it can be much
faster using multi-processing architecture.

## Stage 1

The program contains multiple files, which the main file calls. The first stage is checking if "netwokdiscovery.txt" exists or not. If it does not exist, it will create it. Else, it will clear its content. After it calls "get_ipaddress.sh"

Further, it takes the output of the "nmap" command, using the pipe command, and it uses the command-line utility for searching plain-text data "grep" to search the lines that contain the word "report". The preprocessed pain-text output from the "grep" command is passed, using the pipe command, to the domain-specific language designed for text processing "awk".

---------------------------

## Stage 2

The result of stage 1 is a must to continue the program execution. Therefore,the program waits for the first stage execution to be completed and then proceeds to stage 2.

The second stage contains port scanning steps for both TCP and UDP. As in the previous step, the first checks whether the output files exist. If they do not exist, it will create them. Else, it will clear their content.
