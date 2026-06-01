; build_your_kernel_workshop
; BOOT FILE

; ===============================
; BOOT SECTOR
; ===============================
[bits __]                       ; REAL MODE
[org 0x7c00]                    ; Put program to adress 0x7c00

start:
    ___                         ; Disable CPU interruptions

    mov ax, 0                   ; Init segments
    mov ds, ax
    mov es, ax
    mov ss, ax

    mov bp, 0x9000              ; Stack
    mov sp, bp                  ; Put the top of the stack in bp

    mov bx, MSG_REAL_MODE       ; Load the string into bx

    call print_rm               ; Print the string

    jmp $                       ; HANG

; ===============================
; INCLUDES
; ===============================
%include "print_rm.asm"

; ===============================
; GLOBAL VARIABLES
; ===============================
MSG_REAL_MODE db "Started in 16-bit Real Mode"

; ===============================
; PADDING & SIGNATURE
; ===============================
times __________ db 0           ; PADDING
dw ______ ;(BIG ENDIAN)         ; BOOTLOADER SIGNATURE

; WORKSHOP | 2026
