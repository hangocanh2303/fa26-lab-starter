.data
output: .word   1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20

.text
    # `output` là con trỏ đến mảng int
    # đặt x8 bằng `output`
    la    x8 output

    add   x9  x8  x0
    add  x10  x0  x0
    add  x11  x0  x0
    addi x13  x0  20
Loop:
    bge  x11 x13 End
    lw   x12  0(x9)
    add  x10 x10 x12
    addi  x9  x9   4
    addi x11 x11   1
    j Loop
End:
    mv a0 x10
    jal print_int

    # truyền 10 vào ecall sẽ kết thúc chương trình
    li a0 10
    ecall

# in ra một số nguyên
# giá trị đầu vào: a0: số nguyên cần in
# không trả về gì
print_int:
    # để in một số nguyên, chúng ta cần tạo ecall với a0 đặt bằng 1
    # thứ sẽ được in được lưu trong thanh ghi a1
    # dòng này sao chép số nguyên cần in vào a1
    mv a1 a0
    # đặt thanh ghi a0 bằng 1 để ecall sẽ in
    li a0 1
    # in số nguyên
    ecall
    # trả về hàm gọi
    jr ra
