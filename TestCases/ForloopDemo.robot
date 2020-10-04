*** Test Cases ***
For Loop 1
    : FOR   ${i}    IN RANGE    1   10
    \   log to console  ${i}
    \   log     ${i}

For Loop 2
    : FOR   ${i}  IN  1 2 3 4 5 6 7 8 9             #single space will print all in 1 line,
    \   log to console  ${i}                        #double space will print all in different line
    \   log     ${i}


For Loop 3 with List
    @{items}    create list     1   2   3   4   5
    : FOR   ${i}    IN  ${items}
    \   log to console  ${i}
    \   log     ${i}


For Loop 4
    : FOR   ${i}    IN      john    david    smith    scott
    \   log to console      ${i}
    \   log     ${i}


For Loop 5
    @{names}    create list  john    david    smith    scott
    : FOR   ${i}    IN    ${names}
    \   log to console      ${i}
    \   log     ${i}


For Loop 6 with exit
    @{items}    create list     1   2   3   4   5
    : FOR   ${i}    IN      @{items}
    \   log to console       ${i}
    \   Exit for loop if     ${i}==A

