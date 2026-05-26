; build_your_kernel_workshop
; BOOT FILE

; ===============================
; BOOT SECTOR
; ===============================
[bits 16]                       ; REAL MODE
[org 0x7c00]

start:
    cli                         ; Disable CPU interruptions

    xor ax, ax                  ; Init segments
    mov ds, ax
    mov es, ax
    mov ss, ax

    mov bp, 0x9000              ; Stack
    mov sp, bp

    mov bx, MSG_REAL_MODE       ; Load the string into bx

    call print_rm

    jmp $                       ; HANG

; ===============================
; INCLUDES
; ===============================
%include "print_rm.asm"

; ===============================
; GLOBAL VARIABLES
; ===============================
MSG_REAL_MODE db "Started in 16-bit Real Mode", 0x0d, 0x0a, 0

; ===============================
; PADDING & SIGNATURE
; ===============================
times 510-($-$$) db 0           ; PADDING
dw 0xaa55 ;(BIG ENDIAN)         ; BOOTLOADER SIGNATURE

; WORKSHOP | 2026
