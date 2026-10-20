unsigned int factorial(unsigned int N) {
    int fact = 1, i;

    // Loop from 1 to N to get the factorial
    for (i = 1; i <= N; i++) {
        fact *= i;
    }

    return fact;
}

-> 
fact = 1, i = 1
while(i <= n) {
    fact *= i
    i += 1
}

->
fact = 1, i = 1
Loop: 
   if (i > n) goto AfterLoop 
   fact *= i
   i += 1
   goto Loop
AfterLoop: 

