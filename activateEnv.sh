# Load conda/mamba functions for this shell session
if command -v mamba &> /dev/null; then
	source "/usr/etc/profile.d/mamba.sh"
else
	echo "Error: mamba is not installed or not in PATH." >&2
	exit 1
fi

# Now you can activate by prefix path
mamba activate ./env
