// build_your_kernel_workshop
// KERNEL FILE

#include "kernel.h"

// EXTERN
char *video_memory = (char*) VIDEO_MEMORY;                  // The adress of the video memory

void print_char(char c, int row, int col, char attr)
{
    int offset = ___;

    video_memory[offset] = c;
    video_memory[offset + 1] = BLACK_ON_WHITE;
}

void print_string(char *str, int row, int col, int color)
{
    for (int i = 0; str[i]; i++) {
        print_char(str[i], row, col, color);
        col++;
        if (col >= MAX_COL) {
            row++;
            col = 0;
        }
    }
}

void reset_screen(void)
{
    int total = ___;

    for (int i = 0; i < total; i += 2)
    {
        video_memory[i] = ' ';
        video_memory[i + 1] = WHITE_ON_BLACK;
    }
}

/**
 * @brief The main function of the KERNEL
 * @note This function is called by the bootloader by kernel_entry.asm
 */
void kmain(void)
{
    reset_screen();                                      // Put a black screen
    print_string("Hello World", 0, 0, BLACK_ON_WHITE);   // Print "Hello World"
    while(1);                                               // HANG
}

// WORKSHOP | 2026
