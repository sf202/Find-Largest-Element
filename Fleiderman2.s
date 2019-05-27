!Santiago Lucas  Fleiderman
! Csc 3210
! November 11, 2016
! Assignment 4
! CSC 3210
! This program uses a stack and an array to find the largest element by searching the array and storing it in %l1,thus %l1 =6

!local variables
num_s = -24
n_s = -28

.global main
.align 4
main: save %sp,-120,%sp

mov 2,%o0
st %o0, [%fp + num_s +0]
mov 5,%o0
st %o0, [%fp + num_s +4]
mov -3, %o0
st %o0, [%fp + num_s +8]
mov -4, %o0
st %o0, [%fp + num_s +12]
mov 0, %o0
st %o0,[%fp + num_s +16]
mov 6,%o0
st %o0,[%fp + num_s +20]


st %o0, [%fp + n_s] 
ld [%fp + num_s],%l1
b fortest 
mov 1, %l0
for: sll %l0,2,%o0
add %fp, %o0, %o0
ld [%o0 + num_s], %o0
cmp %o0, %l1
ble keep
nop
mov %o0,%l1
keep: 
add %l0,1,%l0
fortest:
ld [%fp + n_s],%o0
cmp %l0,%o0
ble for
nop
mov 1,%g1
ta 0
! max is stored in %l1
