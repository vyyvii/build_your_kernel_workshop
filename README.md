# 02 — Protected Mode

## Goal

Switch the CPU from 16-bit real mode to 32-bit protected mode. \
Modern operating systems do not run in real mode. \
To unlock 32-bit features, we must configure the CPU and enable protected mode.

---

## Concepts introduced

- protected mode
- GDT
- CR0 register
- far jump
- 32-bit execution
- VGA memory

---

## Your tasks

- load the GDT
- enable protected mode
- jump to 32-bit code
- print "32-bit Protected Mode"

---

## Build & run

```bash
make run_qemu
```

---

## Expected result

```txt
32-bit Protected Mode
```

---

## Notes

Protected mode allows:
- 32-bit registers
- larger memory access
- modern operating system features

At this stage:
- BIOS interrupts are no longer available