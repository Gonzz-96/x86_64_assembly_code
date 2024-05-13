# Simple program that exist and returns a status code back to the Linux kernel

.section .data

.section .text

.globl _start

_start:
    movl $1, %eax    # this is the linux kernel command
                     # number (system call) for exiting
                     # a program

    movl $50, %ebx  # this is the status number we will
                     # return to the operating system

    int $0x80        # this wakes up the kernel to run the exit command
