#### Factorial đệ quy
.globl factorial

.text
main:
    li a0 3
    jal ra, factorial

    addi a1, a0, 0
    addi a0, x0, 1
    ecall # In kết quả

    addi a1, x0, '\n'
    addi a0, x0, 11
    ecall # In dòng mới

    addi a0, x0, 10
    ecall # Thoát

# factorial nhận một đối số:
# a0 chứa số mà chúng ta muốn tính factorial
# Giá trị trả về nên được lưu trong a0

factorial:
    # Prologue
    addi sp sp -8
    sw ra 0(sp)
    sw s0 4(sp)

    # Body
    mv s0 a0
    li t0 1

    bne s0 t0 recurse

    # Trường hợp cơ sở
    li a0 1
    j epilogue

recurse:
    addi a0 s0 -1
    jal ra factorial
    mul a0 s0 a0

epilogue:
    lw ra 0(sp)
    lw s0 4(sp)
    addi sp sp 8
    jr ra
