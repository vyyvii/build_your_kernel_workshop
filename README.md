# 01 — Boot Sector

## Goal

Write your very first boot sector. \
At startup, the BIOS loads the first 512 bytes of the disk into memory and executes them. \
This is the first code executed on the machine.

---

## Concepts introduced

- BIOS
- boot sector
- x86 real mode
- boot signature `0xAA55`
- infinite loop

---

## Your tasks

- create an infinite loop
- make the sector bootable

---

## Build & run

```bash
make run_qemu
```

---

## Expected result

An infinite loop on a black screen

---

## Notes

A boot sector:
- is exactly 512 bytes long
- ends with the boot signature `0xAA55`
- is loaded by the BIOS at address `0x7C00`
