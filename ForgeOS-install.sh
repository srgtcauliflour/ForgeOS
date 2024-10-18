#!/bin/bash

echo “ ========================================
ForgeOS Setup
======================================== “
# A script to automate the installation of essential tools, languages,
# compilers, debuggers, and environments for a complete development environment.

# Run as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit
fi

# Update system
echo "Upgrading the Forge..."
sudo apt update && sudo apt upgrade -y

# Install essential build tools
echo "Installing essential build tools..."
sudo apt install -y build-essential git curl wget

# ===========================================
# Languages and Compilers Installation
# ===========================================

# Install GCC, G++, and Clang
echo "Installing GCC, G++, and Clang..."
sudo apt install -y gcc g++ clang

# Install Python3 and Pip
echo "Installing Python3 and Pip..."
sudo apt install -y python3 python3-pip

# Install Rust
echo "Installing Rust..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Install Java
echo "Installing Java..."
sudo apt install -y default-jdk

# Install Node.js
echo "Installing Node.js..."
curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -
sudo apt install -y nodejs

# Install Go
echo "Installing Go..."
sudo apt install -y golang-go

# Install Ruby
echo "Installing Ruby..."
sudo apt install -y ruby-full

# Install Swift
echo "Installing Swift..."
sudo apt install -y clang libicu-dev libcurl4-openssl-dev
curl -s https://swift.org/keys/all-keys.asc | sudo apt-key add -
echo "deb https://swift.org/download/ubuntu-focal swift main" | sudo tee /etc/apt/sources.list.d/swift.list
sudo apt update && sudo apt install -y swift

# Install Haskell
echo "Installing Haskell..."
sudo apt install -y haskell-platform

# Install Erlang
echo "Installing Erlang..."
sudo apt install -y erlang

# Install Lua
echo "Installing Lua..."
sudo apt install -y lua5.3

# Install Kotlin
echo "Installing Kotlin..."
sudo apt install -y kotlin

# Install Perl
echo "Installing Perl..."
sudo apt install -y perl

# Install PHP
echo "Installing PHP..."
sudo apt install -y php-cli

# ===========================================
# Development Environments Setup
# ===========================================

# Install Visual Studio Code
echo "Installing Visual Studio Code..."
sudo apt install -y code

# Install JetBrains IntelliJ via Toolbox
echo "Installing JetBrains IntelliJ..."
wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.24.11947.tar.gz
tar -xzf jetbrains-toolbox-1.24.11947.tar.gz
./jetbrains-toolbox

# Install Vim, Emacs, and Neovim
echo "Installing Vim, Emacs, and Neovim..."
sudo apt install -y vim emacs neovim

# Install Eclipse IDE
echo "Installing Eclipse IDE..."
sudo snap install --classic eclipse

# ===========================================
# Build and Compilation Tools Setup
# ===========================================

echo "Installing build and compilation tools (CMake, Meson, Ninja, Make, etc.)..."
sudo apt install -y cmake meson ninja-build make autoconf ant gradle

# ===========================================
# Decompiling and Reverse Engineering Tools
# ===========================================

echo "Installing decompilation and reverse engineering tools..."
# Install Ghidra
wget https://ghidra-sre.org/ghidra_10.2.3_PUBLIC_20230920.zip
unzip ghidra_10.2.3_PUBLIC_20230920.zip -d /opt/ghidra

# Install Radare2
sudo apt install -y radare2

# Install Jadx
sudo apt install -y jadx

# Install HexFiend
sudo apt install -y hexfiend

# ===========================================
# Compression and Decompression Tools Setup
# ===========================================

echo "Installing compression and decompression tools (Zip, 7-Zip, Tar, etc.)..."
sudo apt install -y zip unzip p7zip-full tar gzip bzip2 rar unrar xz-utils lzma squashfs-tools

# ===========================================
# Debugging and Profiling Tools Setup
# ===========================================

echo "Installing the Debug Toolkit..."
sudo apt install -y gdb valgrind strace ltrace linux-perf systemtap lldb

# ===========================================
# Cross-Platform Compilation and SDK Tools Setup
# ===========================================

echo "Installing Cross-Platform Compilation Tools..."
sudo apt install -y mingw-w64 libretro-super wine qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils

# ===========================================
# Virtualization and Containerization Tools Setup
# ===========================================

# Install Docker
echo "Installing Docker..."
sudo apt install -y docker.io
sudo systemctl enable --now docker

# Install VirtualBox
echo "Installing VirtualBox..."
sudo apt install -y virtualbox

# Install Vagrant
echo "Installing Vagrant..."
sudo apt install -y vagrant

# ===========================================
# GUI and Productivity Tools Setup
# ===========================================

# Install XFCE
echo "Installing XFCE desktop environment..."
sudo apt install -y xfce4 xfce4-goodies

# Install i3 Tiling Window Manager
echo "Installing i3 window manager..."
sudo apt install -y i3-wm i3status dmenu

# Install Guake Terminal
echo "Installing Guake (drop-down terminal)..."
sudo apt install -y guake

# ===========================================
# Additional Utilities Setup
# ===========================================

# Install Nextcloud
echo "Installing Nextcloud for file synchronization..."
sudo apt install -y nextcloud-client

# Install Syncthing
echo "Installing Syncthing..."
sudo apt install -y syncthing

# ===========================================
# Finishing Up
# ===========================================
echo "ForgeOS Successfully Installed!"
echo "Please restart your system to ensure all changes take effect."
