#!/bin/bash

# True if file exists.
## [[ -a ${file} ]] OR [[ -e ${file} ]] # can use anyone of this...

# True if file exists and is a directory.
## [[ -d ${file} ]]

# True if file exists and is readable.
## [[ -r ${file} ]]

# True if file exists and is writable.
## [[ -w ${file} ]]

# True if file exists and is executable.
## [[ -x ${file} ]]

# True if file exists and has a size greater than zero.
## [[ -s ${file} ]]


# True if the shell variable varname is set (has been assigned a value).
## [[ -v ${varname} ]]

# True if the length of the string is zero.
## [[ -z ${string} ]]

# True if the length of the string is non-zero.
## [[ -n ${string} ]]

# True if the strings are equal.
## [[ ${string1} == ${string2} ]]

# True if the strings are not equal.
## [[ ${string1} != ${string2} ]]

# String Comparision.
## [[ ${string1} > ${string2} ]]
## [[ ${string1} < ${string2} ]]

### Arithmetic Operations...

# Returns true if the numbers are equal
## [[ ${arg1} -eq ${arg2} ]]

# Returns true if the numbers are not equal
## [[ ${arg1} -ne ${arg2} ]]

# Returns true if arg1 is less than arg2
## [[ ${arg1} -lt ${arg2} ]]

# Returns true if arg1 is less than or equal arg2
## [[ ${arg1} -le ${arg2} ]]

# Returns true if arg1 is greater than arg2
## [[ ${arg1} -gt ${arg2} ]]

# Returns true if arg1 is greater than or equal arg2
## [[ ${arg1} -ge ${arg2} ]]

# Can use AND and OR operations...
## [[ test_case_1 ]] && [[ test_case_2 ]] # And
## [[ test_case_1 ]] || [[ test_case_2 ]] # Or

# Exit status #?