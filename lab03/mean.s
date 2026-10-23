.globl mean

.text
main:
    li   a0, 1
    li   a1, 2
    li   a2, 3
    li   a3, 4

    jal  ra, mean

    addi a1, a0, 0
    addi a0, x0, 1
    ecall                  # Print Result

    addi a1, x0, '\n'
    addi a0, x0, 11
    ecall                  # Print newline

    addi a0, x0, 10
    ecall                  # Exit

mean:
    # YOUR CODE HERE
    add t0, a0, a1
    add t1, a2, a3
    add t0, t0, t1
    srai a0, t0, 2
    ret
