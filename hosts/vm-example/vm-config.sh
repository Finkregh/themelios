# Themelios configuration.sh example
POOL_NAME="zroot"
POOL_TYPE=""    # Use "" or mirror/raidz1/raidz2/raidz3 ...

# use one disk per line here! e.g.
# POOL_DISKS="/dev/sda
# /dev/sdb
# /dev/sdc"

POOL_DISKS="/dev/sda"

SGDISK_CLEAR="true"   # Use sgdisk --clear
WIPEFS_ALL="true"     # Use wipefs --all
ZERO_DISKS="false"    # Use dd if=/dev/zero ...
ATIME="off"           # Set to "on" or "off" (recommended "off" for SSD.)
SNAPSHOT_ROOT="true"  # Set the value of com.sun:auto-snapshot
SNAPSHOT_HOME="true"
USE_ZSWAP="false"     # Creates a swap zvol
ZSWAP_SIZE="4G"

THEMELIOS_ZFS="true"  # Creates /etc/nixos/themelios-zfs.nix with sensible settings

# Your top-level configuration.nix file-- (use the relative path from the project_root.)
# For example, to bootstrap the file project_root/hosts/vm-example/default.nix use the following:
TOP_LEVEL_NIXFILE="hosts/vm-example"

# Directory name of <git-remote> in "/" (root). Do not use slashes.
NIXCFG_DIR="nix-config"

# If true, mount /nix outside of the / (root) dataset.
# Setting this to true would trade-off the ability to use zfs boot environments for extra disk space.
# If you use nix.gc.automatic, then this should not be much of an issue. Recommended "false".
NIXDIR_NOROOT="false" # mount /nix outside of the / (root) dataset.