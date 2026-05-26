# MAKEFILE FOR OS-GAME OF LIFE

# ─────────────────────────────────────────────────────────────
# NAME
# ─────────────────────────────────────────────────────────────
NAME			= 	workshop

# ─────────────────────────────────────────────────────────────
# FILES
# ─────────────────────────────────────────────────────────────
BOOT 		   	= 	boot.asm
BOOT_BIN		=	boot.bin

# ─────────────────────────────────────────────────────────────
# COMPILER & COMPILATION FLAGS
# ─────────────────────────────────────────────────────────────
NASM		= 		nasm
NASM_FLAGS	=	 	-f elf32

# ─────────────────────────────────────────────────────────────
#  HYPERVISOR & OTHERS
# ─────────────────────────────────────────────────────────────
QEMU 	    =		qemu-system-i386
QEMU_FLAGS 	=		-fda

# ─────────────────────────────────────────────────────────────
# TOOLS
# ─────────────────────────────────────────────────────────────
INSTALL 	= 		sudo apt

REMOVE 		= 		rm -rf
RM_FILES 	= 		"*.out" "*.o" "*.bin" "*.elf"

export PATH := $(HOME)/opt/cross/bin:$(PATH)

# ─────────────────────────────────────────────────────────────
# CONFIGURATION
# ─────────────────────────────────────────────────────────────
install_base: clear_install
	$(INSTALL) update
	$(INSTALL) install nasm
	$(INSTALL) install qemu-system qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virt-manager
	$(INSTALL) install -y build-essential bison flex libgmp3-dev libmpc-dev libmpfr-dev texinfo

install_and_config_all: install_base
	bash shell/install.sh
	which $(CC)
	which $(LD)

clear_install:
	$(INSTALL) remove nasm
	sudo $(REMOVE) ~/src
	sudo $(REMOVE) ~/opt/cross

# ─────────────────────────────────────────────────────────────
# COMPILATION
# ─────────────────────────────────────────────────────────────
all: $(NAME)

%.o: %.asm
	$(NASM) $(NASM_FLAGS) $< -o $@

compile_boot:
	$(NASM) $(BOOT) -o $(BOOT_BIN)

$(NAME): compile_boot
	cat $(BOOT_BIN) > $(NAME)

# ─────────────────────────────────────────────────────────────
# RUNNING
# ─────────────────────────────────────────────────────────────
run_qemu: all
	$(QEMU) $(QEMU_FLAGS) $(NAME)

# ─────────────────────────────────────────────────────────────
# CLEANING
# ─────────────────────────────────────────────────────────────
clean:
	for f in $(RM_FILES); do find . -name "$$f" -delete; done

fclean: clean
	$(REMOVE) $(NAME)

re: fclean all

# ─────────────────────────────────────────────────────────────
# PHONY TARGETS
# ─────────────────────────────────────────────────────────────
.phony: install_base install_and_config_all compile_boot run_qemu clean fclean all re

# WORKSHOP | 2026
