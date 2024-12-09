# Define paths to the scripts
LINUX_SCRIPT = ./bin/linux.sh
CLEANUP_SCRIPT = ./bin/cleanup.sh

# Default target is 'linux'
all: linux

# linux target depends on clean
linux: clean
	@echo "Running linux setup..."
	$(LINUX_SCRIPT)

# clean target to reverse the changes
clean:
	@echo "Running cleanup..."
	$(CLEANUP_SCRIPT)

# Rule to ensure that the scripts have executable permissions
$(LINUX_SCRIPT):
	chmod +x $(LINUX_SCRIPT)

$(CLEANUP_SCRIPT):
	chmod +x $(CLEANUP_SCRIPT)

