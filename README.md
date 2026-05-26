# 05 — Kernel

## Goal

Launch a minimal C kernel in 32-bit protected mode. \
At this stage, we finally execute our own C code without Linux or any operating system.

---

## Concepts introduced

- kernel entry point
- linking
- ASM ↔ C interaction
- VGA output from C

---

## Your tasks

- implement `kernel_main`
- clear the screen
- display `Hello World`

---

## Build & run

```bash
make run_qemu
```

---

## Expected result

```txt
Hello World
```

---

## Notes

A kernel is simply a program executed directly by the machine.

At this stage:
- there is no operating system
- no standard library
- no `printf`
- no terminal

Everything interacts directly with the hardware.
