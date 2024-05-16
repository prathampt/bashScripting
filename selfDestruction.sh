#!/bin/bash
echo "The name of the file is: $0 and it is going to be self-deleted."
rm -f $0 # Remember to lock your script before deleting it...

# Even if the file is destroyed, it will still execute the following commands...
ls -l
touch new