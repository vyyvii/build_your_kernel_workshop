// build_your_kernel_workshop
// KERNEL HEADER

#ifndef KERNEL_H
    #define KERNEL_H

    // ATTRIBUTES
    #define WHITE_ON_BLACK 0x0f
    #define BLACK_ON_WHITE 0xf0
    #define WHITE_ON_GRAY 0x8f
    #define FULL_GRAY 0x88

    // VGA
    #define  MAX_ROW 25
    #define  MAX_COL 80

    // SCANCODES & SPECIALS REGS
    #define VIDEO_MEMORY 0xB8000

    // ELSE
    #define QUIT_QEMU 0x604
    #define BACKSPACE 0x0E
    #define ENTER 0x1C
    #define MAX_INT_SIZE 12

// EXTERN
extern char *video_memory;                  // The adress of the video memory

// FUNCTIONS
    // SCREEN
void print_char(char c, int row, int col, char attr);
void print_string(char *str, int row, int col, int color);
void reset_screen(void);


#endif

// WORKSHOP | 2026
