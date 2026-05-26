# Build Your Own Kernel Workshop

> Build a minimal x86 operating system from scratch in 2 hours.

This workshop introduces the fundamentals of low-level programming and operating system booting.

By the end of the workshop, you will:
- understand how a computer boots
- write x86 assembly
- switch to 32-bit protected mode
- write directly to VGA memory
- launch a minimal C kernel
- display `Hello World` without Linux or any operating system

---

# Workshop roadmap

The workshop is divided into multiple Git branches.

Each branch represents one step of the boot process.

| Step | Branch | Goal |
|---|---|---|
| 1 | `01-boot-sector` | Execute code from the boot sector |
| 2 | `02-real-mode` | Use BIOS interrupts in 16-bit real mode |
| 3 | `03-vga` | Write directly to VGA memory |
| 4 | `04-protected-mode` | Switch the CPU to 32-bit protected mode |
| 5 | `05-kernel` | Launch a minimal C kernel |
| Final | `05-solution` | Complete working solution |

---

# Getting started

## Clone the repository

```bash
git clone https://github.com/vyyvii/build_your_kernel_workshop.git
cd build_your_kernel_workshop
```

---

# Install dependencies

> [!WARNING]
> Root access is required.

```bash
make install_and_config_all
```

---

# Run the OS

```bash
make run_qemu
```

---

# Navigation between workshop steps

Example:

```bash
git checkout 01-boot-sector
```

---

# Recommended setup

- Linux
- VSCode
- QEMU
- NASM

---

# Workshop philosophy

This workshop is intentionally minimal.

The goal is not to build a production operating system.

The goal is to understand:
- how a computer boots
- how low-level software works
- what exists underneath `printf("Hello World")`

---

# Resources

### Books & articles

- *Writing a Simple Operating System — from Scratch* — Nick Blundell
- *OSDev Wiki* — https://wiki.osdev.org/

### Videos

- *Building an OS* — nanobyte
- *vas-y, viens, on recode Windows de zéro* — V2F

### Open-source projects

- https://github.com/nanobyte-dev/nanobyte_os
- https://github.com/ghaiklor/ghaiklor-os-gcc

---

# Contributors

Main contributor:
Victor Defauchy
