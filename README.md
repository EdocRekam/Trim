# Trim
Remove whitespace from text files


# SYNOPSIS
`trim [--recursive] [--backup=<extension>] [--exclude=<chars>] <paths ...>`

# DESCRIPTION
Trim is a Windows command line program that removes trailing white space from
text files.

# EXAMPLES
1. If you want remove trailing white space from all files with the `.cs` 
   extension in the current directory you can write

    `trim *.cs`

2. If you want to recursively process a tree you can say

     `trim --recursive *.cs README`

# PERFORMANCE
File modifications are done in place unless `--backup` is specified. We use a
forward only non-deterministic algorithm which means we only look at the file
once in a single pass. In other words, it's fast.

The file is read two pages at a time, page size is operating system specific,
but it's usually 16K so I use little memory and can read files up to the maximum
Windows file size.

A file is write-locked during processing. You can read while I am writing to it,
e.g., a virus scanner will not interfere with the process, but you can not
modify the file at the same time I am.

[Edoc Rekam]:<https://github.com/EdocRekam>
