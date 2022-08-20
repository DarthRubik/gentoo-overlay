# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Meta package for dros"

SLOT="0"
KEYWORDS="~alpha amd64 arm arm64 hppa ~ia64 ~loong ~m68k ~mips ppc ppc64 ~riscv ~s390 sparc x86 ~x64-cygwin ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~sparc-solaris ~sparc64-solaris ~x64-solaris ~x86-solaris"
IUSE="+wifi"

RDEPEND="
	app-admin/sudo
	app-admin/sysklogd
	app-editors/neovim
	app-misc/neofetch
	app-portage/gentoolkit
	dev-util/debugedit
	net-fs/samba
	wifi? (
		net-misc/networkmanager
		net-wireless/iw
	)
	sys-boot/grub
	sys-fs/btrfs-progs
	sys-kernel/gentoo-kernel
	sys-kernel/linux-firmware
	sys-process/htop
	dev-vcs/git
"

