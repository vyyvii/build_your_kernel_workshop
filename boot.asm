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

    jmp $                       ; HANG

; ===============================
; PADDING & SIGNATURE
; ===============================
times 510-($-$$) db 0           ; PADDING
dw 0xaa55 ;(BIG ENDIAN)         ; BOOTLOADER SIGNATURE

; WORKSHOP | 2026
