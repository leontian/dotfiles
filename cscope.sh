#!/bin/bash                                                                                                                                                                                                                   find . \( -not -path "*/\.*" \) -and \( -name "*.[ch]" -o -name "*.[ch]pp" -o -name "*.cc" \) > ./cscope.files
# find . \( -name "*.[ch]" -o -name "*.[ch]pp" -o -name "*.cc" \) > ./cscope.files
cscope -b && ctags --c++-kinds=+p --fields=+iaS --extra=+q -L cscope.files
mv tags TAGS
