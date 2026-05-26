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
- print "Started in 16-bit Real Mode"

---

## Build & run

```bash
make run_qemu
```

---

## Expected result

```txt
Started in 16-bit Real Mode
```

---

## Notes

A boot sector:
- is exactly 512 bytes long
- ends with the boot signature `0xAA55`
- is loaded by the BIOS at address `0x7C00`
